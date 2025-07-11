.module trigger_2_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_outside, _scene_outside

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_2_interact = 255
.globl ___bank_trigger_2_interact

_trigger_2_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_2_interact$ba8e33ae_abb6_4813_9983_d09e929e43de$3509d273_bf7e_4946_89ce_a489df5a449d$trigger$cf8d8764_4e2f_4216_ab26_79aa0629de89$script = .
.globl GBVM$trigger_2_interact$ba8e33ae_abb6_4813_9983_d09e929e43de$3509d273_bf7e_4946_89ce_a489df5a449d$trigger$cf8d8764_4e2f_4216_ab26_79aa0629de89$script
        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_QUEST2, 0, 1$, 0
        VM_JUMP                 2$
1$:
GBVM$trigger_2_interact$65fa19e1_4e83_4d35_86ac_0c0b16fe1ba7$3509d273_bf7e_4946_89ce_a489df5a449d$trigger$cf8d8764_4e2f_4216_ab26_79aa0629de89$script = .
.globl GBVM$trigger_2_interact$65fa19e1_4e83_4d35_86ac_0c0b16fe1ba7$3509d273_bf7e_4946_89ce_a489df5a449d$trigger$cf8d8764_4e2f_4216_ab26_79aa0629de89$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    4096
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_outside

2$:

GBVM_END$trigger_2_interact$ba8e33ae_abb6_4813_9983_d09e929e43de = .
.globl GBVM_END$trigger_2_interact$ba8e33ae_abb6_4813_9983_d09e929e43de
        ; Stop Script
        VM_STOP
