.module trigger_17_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_outside, _scene_outside

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_17_interact = 255
.globl ___bank_trigger_17_interact

_trigger_17_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_17_interact$54f6467c_1462_4af1_adbe_3d5eb2a922a8$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$9e6ed578_c480_4a7e_aa6f_93a859e6d529$script = .
.globl GBVM$trigger_17_interact$54f6467c_1462_4af1_adbe_3d5eb2a922a8$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$9e6ed578_c480_4a7e_aa6f_93a859e6d529$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2560
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    2304
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_outside

        ; Stop Script
        VM_STOP
