.module trigger_1_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_outside, _scene_outside

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_1_interact = 255
.globl ___bank_trigger_1_interact

_trigger_1_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_1_interact$6f0aa602_8bf8_4eb2_8f25_ef4c82216eff$3509d273_bf7e_4946_89ce_a489df5a449d$trigger$6afacec9_b7fb_4c71_82e6_b463e58f1180$script = .
.globl GBVM$trigger_1_interact$6f0aa602_8bf8_4eb2_8f25_ef4c82216eff$3509d273_bf7e_4946_89ce_a489df5a449d$trigger$6afacec9_b7fb_4c71_82e6_b463e58f1180$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    6400
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3840
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
