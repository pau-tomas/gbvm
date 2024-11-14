.module trigger_7_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_2, _scene_2

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_7_interact = 255
.globl ___bank_trigger_7_interact

_trigger_7_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_7_interact$4d3ca446_d2db_4927_948c_2052daee65a4$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$trigger$70e29572_6ffa_41de_b5b5_3c2b8bb9626a$script = .
.globl GBVM$trigger_7_interact$4d3ca446_d2db_4927_948c_2052daee65a4$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$trigger$70e29572_6ffa_41de_b5b5_3c2b8bb9626a$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_2

        ; Stop Script
        VM_STOP
