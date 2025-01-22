.module cutscene_trigger_interact

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5

___bank_cutscene_trigger_interact = 255
.globl ___bank_cutscene_trigger_interact

_cutscene_trigger_interact::
        VM_LOCK

        VM_RESERVE              5

        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Follow me"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Thread Start
        VM_UNLOCK
        VM_BEGINTHREAD          ___bank_script_thread, _script_thread, VAR_TEMP_0, 0

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    1280
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    2176
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    3072
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    2688
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2688
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3968
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Stop Script
        VM_STOP
