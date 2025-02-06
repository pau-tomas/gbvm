.module scene_warning_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_titlescreen, _scene_titlescreen

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_scene_warning_init = 255
.globl ___bank_scene_warning_init

_scene_warning_init::
        VM_LOCK

        VM_RESERVE              4

GBVM$scene_warning_init$b5944941_c7ac_4a07_8fa2_05ecc470ec7f$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script = .
.globl GBVM$scene_warning_init$b5944941_c7ac_4a07_8fa2_05ecc470ec7f$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script
        ; Variable Set To
        VM_SET_CONST            VAR_VARIABLE_0, 1

GBVM$scene_warning_init$c7ea42a6_1d4d_41e9_b540_85d81757b4ef$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script = .
.globl GBVM$scene_warning_init$c7ea42a6_1d4d_41e9_b540_85d81757b4ef$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script
        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

GBVM$scene_warning_init$autofade$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script = .
.globl GBVM$scene_warning_init$autofade$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_warning_init$93ddbf67_3bea_48b3_8f0c_387f9fcfbdc4$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script = .
.globl GBVM$scene_warning_init$93ddbf67_3bea_48b3_8f0c_387f9fcfbdc4$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script
        ; Wait For Input
        VM_INPUT_WAIT           240

GBVM$scene_warning_init$1d396e64_10c3_4940_bdd2_04d2d139595a$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script = .
.globl GBVM$scene_warning_init$1d396e64_10c3_4940_bdd2_04d2d139595a$36736c20_0d27_4411_b919_b1d138aa0362$scene$36736c20_0d27_4411_b919_b1d138aa0362$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_titlescreen

        ; Stop Script
        VM_STOP
