.module trigger_0_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_outside, _scene_outside

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_0_interact = 255
.globl ___bank_trigger_0_interact

_trigger_0_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_0_interact$343caad0_6819_4051_8d85_a77e34e2bcbc$5e64882f_8ce6_423e_b582_70fdb2142ff6$trigger$ec1bdb23_06f3_4053_9295_cc79ba27985b$script = .
.globl GBVM$trigger_0_interact$343caad0_6819_4051_8d85_a77e34e2bcbc$5e64882f_8ce6_423e_b582_70fdb2142ff6$trigger$ec1bdb23_06f3_4053_9295_cc79ba27985b$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    6144
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
