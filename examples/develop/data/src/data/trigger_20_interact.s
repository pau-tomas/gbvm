.module trigger_20_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_platform, _scene_platform

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_20_interact = 255
.globl ___bank_trigger_20_interact

_trigger_20_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_20_interact$e5c482c4_82fd_4633_be82_1b2bc398a20c$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$trigger$fc139bcd_a16b_4151_a9de_7b7e88e437d6$script = .
.globl GBVM$trigger_20_interact$e5c482c4_82fd_4633_be82_1b2bc398a20c$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$trigger$fc139bcd_a16b_4151_a9de_7b7e88e437d6$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2816
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
