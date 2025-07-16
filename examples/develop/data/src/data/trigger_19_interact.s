.module trigger_19_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_platform, _scene_platform

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_19_interact = 255
.globl ___bank_trigger_19_interact

_trigger_19_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_19_interact$d3d016fb_2c06_41b7_8f48_a5350dc32295$a15eed10_615c_488a_b972_b4b37ccfc14e$trigger$be14ccee_3f7f_4bb8_b9f7_b78644644879$script = .
.globl GBVM$trigger_19_interact$d3d016fb_2c06_41b7_8f48_a5350dc32295$a15eed10_615c_488a_b972_b4b37ccfc14e$trigger$be14ccee_3f7f_4bb8_b9f7_b78644644879$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    13568
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
