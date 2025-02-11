.module script_enemy_ship_hit_playe

.include "vm.i"
.include "data/game_globals.i"

.globl b_camera_shake_frames, _camera_shake_frames

.area _CODE_255

.LOCAL_TMP0_CAMERA_SHAKE_ARGS = -3

___bank_script_enemy_ship_hit_playe = 255
.globl ___bank_script_enemy_ship_hit_playe

_script_enemy_ship_hit_playe::
        VM_RESERVE              3

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP0_CAMERA_SHAKE_ARGS, 30
        VM_SET_CONST            ^/(.LOCAL_TMP0_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_RPN
            .R_INT16    5
            .R_REF_SET  ^/(.LOCAL_TMP0_CAMERA_SHAKE_ARGS + 2)/
            .R_STOP
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP0_CAMERA_SHAKE_ARGS

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_0, _sound_legacy_0, ___mute_mask_sound_legacy_0, .SFX_PRIORITY_NORMAL

        VM_RESERVE              -3
        VM_RET_FAR
