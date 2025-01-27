.module trigger_30_interact

.include "vm.i"
.include "data/game_globals.i"

.globl b_camera_shake_frames, _camera_shake_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_CAMERA_SHAKE_ARGS = -4

___bank_trigger_30_interact = 255
.globl ___bank_trigger_30_interact

_trigger_30_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Position
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    6656
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1664
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Position Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP1_CAMERA_SHAKE_ARGS, 6
        VM_SET_CONST            ^/(.LOCAL_TMP1_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_RPN
            .R_INT16    5
            .R_REF_SET  ^/(.LOCAL_TMP1_CAMERA_SHAKE_ARGS + 2)/
            .R_STOP
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP1_CAMERA_SHAKE_ARGS

        ; Stop Script
        VM_STOP
