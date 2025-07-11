.module trigger_13_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_platform, _scene_platform

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_13_interact = 255
.globl ___bank_trigger_13_interact

_trigger_13_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_13_interact$c44125d1_0e13_472f_b409_ccc2f0ae5867$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$2b376751_655f_4591_bf88_c744e8ca8846$script = .
.globl GBVM$trigger_13_interact$c44125d1_0e13_472f_b409_ccc2f0ae5867$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$2b376751_655f_4591_bf88_c744e8ca8846$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    26112
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_platform

        ; Stop Script
        VM_STOP
