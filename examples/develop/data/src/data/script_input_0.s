.module script_input_0

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_title_screen, _scene_title_screen

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input_0 = 255
.globl ___bank_script_input_0

_script_input_0::
        VM_RESERVE              4

GBVM$script_input_0$9daba1e6_c056_494a_babc_caa87913aa32$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$script_input_0$9daba1e6_c056_494a_babc_caa87913aa32$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
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
            IMPORT_FAR_PTR_DATA _scene_title_screen

        ; Stop Script
        VM_STOP
