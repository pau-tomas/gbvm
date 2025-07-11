.module actor_3_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_TMP1_WAIT_ARGS = -4
.LOCAL_ACTOR = -4

___bank_actor_3_update = 255
.globl ___bank_actor_3_update

_actor_3_update::
        VM_RESERVE              4

1$:
        ; Wait 60 frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 60
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Variable Set To Random
        VM_RAND                 VAR_TEMP_0, 0, 6

        ; Switch Variable
        VM_SWITCH               VAR_TEMP_0, 4, 0
        .dw 1, 2$
        .dw 2, 3$
        .dw 3, 4$
        .dw 4, 5$

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        VM_JUMP                 6$
        ; case 1:
2$:
        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    512
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    ^/(.ACTOR_ATTR_CHECK_COLL_WALLS | .ACTOR_ATTR_CHECK_COLL_ACTORS | .ACTOR_ATTR_RELATIVE_SNAP_TILE)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 4
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 6$
        ; case 2:
3$:
        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    -512
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    ^/(.ACTOR_ATTR_CHECK_COLL_WALLS | .ACTOR_ATTR_CHECK_COLL_ACTORS | .ACTOR_ATTR_RELATIVE_SNAP_TILE)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 4
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 6$
        ; case 3:
4$:
        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    -512
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    ^/(.ACTOR_ATTR_CHECK_COLL_WALLS | .ACTOR_ATTR_CHECK_COLL_ACTORS | .ACTOR_ATTR_RELATIVE_SNAP_TILE)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 4
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 6$
        ; case 4:
5$:
        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    512
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    ^/(.ACTOR_ATTR_CHECK_COLL_WALLS | .ACTOR_ATTR_CHECK_COLL_ACTORS | .ACTOR_ATTR_RELATIVE_SNAP_TILE)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 4
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 6$
6$:

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
