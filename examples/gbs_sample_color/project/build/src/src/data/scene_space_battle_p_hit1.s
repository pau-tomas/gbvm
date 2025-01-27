.module scene_space_battle_p_hit1

.include "vm.i"
.include "data/game_globals.i"

.globl b_camera_shake_frames, _camera_shake_frames

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -3
.LOCAL_TMP1_CAMERA_SHAKE_ARGS = -3
.LOCAL_TMP2_PARAM0_VALUE = -3
.LOCAL_TMP3_CAMERA_SHAKE_ARGS = -3
.LOCAL_TMP4_PARAM0_VALUE = -3
.LOCAL_TMP5_CAMERA_SHAKE_ARGS = -3

___bank_scene_space_battle_p_hit1 = 255
.globl ___bank_scene_space_battle_p_hit1

_scene_space_battle_p_hit1::
        VM_RESERVE              3

        ; If Parameter 0 Equals 2
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 2, 1$, 0
        VM_JUMP                 2$
1$:
        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP1_CAMERA_SHAKE_ARGS, 30
        VM_SET_CONST            ^/(.LOCAL_TMP1_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_RPN
            .R_INT16    5
            .R_REF_SET  ^/(.LOCAL_TMP1_CAMERA_SHAKE_ARGS + 2)/
            .R_STOP
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP1_CAMERA_SHAKE_ARGS

        ; Stop Script
        VM_STOP
2$:

        ; If Parameter 0 Equals 4
        VM_GET_TLOCAL           .LOCAL_TMP2_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP2_PARAM0_VALUE, 4, 3$, 0
        VM_JUMP                 4$
3$:
        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP3_CAMERA_SHAKE_ARGS, 30
        VM_SET_CONST            ^/(.LOCAL_TMP3_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_RPN
            .R_INT16    5
            .R_REF_SET  ^/(.LOCAL_TMP3_CAMERA_SHAKE_ARGS + 2)/
            .R_STOP
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP3_CAMERA_SHAKE_ARGS

        ; Stop Script
        VM_STOP
4$:

        ; If Parameter 0 Equals 8
        VM_GET_TLOCAL           .LOCAL_TMP4_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP4_PARAM0_VALUE, 8, 5$, 0
        VM_JUMP                 6$
5$:
        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP5_CAMERA_SHAKE_ARGS, 30
        VM_SET_CONST            ^/(.LOCAL_TMP5_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_RPN
            .R_INT16    5
            .R_REF_SET  ^/(.LOCAL_TMP5_CAMERA_SHAKE_ARGS + 2)/
            .R_STOP
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP5_CAMERA_SHAKE_ARGS

        ; Stop Script
        VM_STOP
6$:

        ; Stop Script
        VM_STOP
