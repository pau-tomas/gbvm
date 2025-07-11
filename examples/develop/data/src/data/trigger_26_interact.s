.module trigger_26_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_outside, _scene_outside

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_26_interact = 255
.globl ___bank_trigger_26_interact

_trigger_26_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_26_interact$40f847c3_08c3_409d_86f2_b89c7629674f$eb295f50_1350_4042_a8d9_ba79f54eab78$trigger$154008e5_493d_43ee_9521_e7bae61cc40b$script = .
.globl GBVM$trigger_26_interact$40f847c3_08c3_409d_86f2_b89c7629674f$eb295f50_1350_4042_a8d9_ba79f54eab78$trigger$154008e5_493d_43ee_9521_e7bae61cc40b$script
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

        ; Stop Script
        VM_STOP
