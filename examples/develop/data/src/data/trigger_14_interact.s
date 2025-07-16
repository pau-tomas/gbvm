.module trigger_14_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_deeper_underground, _scene_deeper_underground

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_14_interact = 255
.globl ___bank_trigger_14_interact

_trigger_14_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_14_interact$4051f7e9_6af4_416f_85e9_2c3a171913e9$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$dffe092c_bd4f_4be0_aa37_c0998ab0ca9f$script = .
.globl GBVM$trigger_14_interact$4051f7e9_6af4_416f_85e9_2c3a171913e9$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$dffe092c_bd4f_4be0_aa37_c0998ab0ca9f$script
        ; Actor Set Position
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    13312
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Position Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

GBVM$trigger_14_interact$7886c669_3cc6_4816_b644_117e75f10a07$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$dffe092c_bd4f_4be0_aa37_c0998ab0ca9f$script = .
.globl GBVM$trigger_14_interact$7886c669_3cc6_4816_b644_117e75f10a07$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$dffe092c_bd4f_4be0_aa37_c0998ab0ca9f$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    1280
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    512
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_UP
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_deeper_underground

        ; Stop Script
        VM_STOP
