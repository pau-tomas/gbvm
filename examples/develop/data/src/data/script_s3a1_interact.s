.module script_s3a1_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_PUSH_DIR_VAR = -5

___bank_script_s3a1_interact = 255
.globl ___bank_script_s3a1_interact

_script_s3a1_interact::
        VM_LOCK

        VM_RESERVE              5

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1920
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    1280
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST .EQ         .ARG0, 0, 1$, 1

        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Push
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP1_PUSH_DIR_VAR
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_IF_CONST .EQ         .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_UP, 3$, 0
        VM_IF_CONST .EQ         .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_LEFT, 4$, 0
        VM_IF_CONST .EQ         .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_RIGHT, 5$, 0
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    12800
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 1)/, .ARG0
        VM_POP                  1
        VM_JUMP                 6$
3$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    12800
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 1)/, .ARG0
        VM_POP                  1
        VM_JUMP                 6$
4$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    12800
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 1)/, .ARG0
        VM_POP                  1
        VM_JUMP                 6$
5$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    12800
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 1)/, .ARG0
        VM_POP                  1
6$:
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_CHECK_COLL
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1920
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    1280
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST .EQ         .ARG0, 0, 7$, 1

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Success!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Set To True
        VM_SET_CONST            VAR_QUEST2, 1

        ; Actor Activate
        VM_SET_CONST            .LOCAL_ACTOR, 6
        VM_ACTOR_ACTIVATE       .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        VM_JUMP                 8$
7$:
8$:

2$:

        ; Variable Set To True
        VM_SET_CONST            VAR_PUSHED_ICE_BLOCK, 1

        ; Stop Script
        VM_STOP
