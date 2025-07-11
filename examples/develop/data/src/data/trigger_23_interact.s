.module trigger_23_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_platform, _scene_platform

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_23_interact = 255
.globl ___bank_trigger_23_interact

_trigger_23_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_23_interact$b79290e7_4a4f_49f3_90a2_5191889120dc$88f214e9_8604_47da_97a3_8400850cde77$trigger$c7c6303f_bd24_49d9_b096_0b2cbec894af$script = .
.globl GBVM$trigger_23_interact$b79290e7_4a4f_49f3_90a2_5191889120dc$88f214e9_8604_47da_97a3_8400850cde77$trigger$c7c6303f_bd24_49d9_b096_0b2cbec894af$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    39936
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_platform

        ; Stop Script
        VM_STOP
