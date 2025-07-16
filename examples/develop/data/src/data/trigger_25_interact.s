.module trigger_25_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_parallax, _scene_parallax

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_25_interact = 255
.globl ___bank_trigger_25_interact

_trigger_25_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_25_interact$c1d7e1f0_4a6f_44ba_9e6b_a5073be57950$eb295f50_1350_4042_a8d9_ba79f54eab78$trigger$c166f1e9_664d_4720_94a0_a677602fbf0d$script = .
.globl GBVM$trigger_25_interact$c1d7e1f0_4a6f_44ba_9e6b_a5073be57950$eb295f50_1350_4042_a8d9_ba79f54eab78$trigger$c166f1e9_664d_4720_94a0_a677602fbf0d$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    19456
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_parallax

        ; Stop Script
        VM_STOP
