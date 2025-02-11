.module script_input

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_titlescreen, _scene_titlescreen

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input = 255
.globl ___bank_script_input

_script_input::
        VM_RESERVE              4

GBVM$script_input$59658cff_173f_48d8_bfdf_8e6a87019579$aa2a543b_6c85_4c40_bbf3_145307646993$scene$aa2a543b_6c85_4c40_bbf3_145307646993$script = .
.globl GBVM$script_input$59658cff_173f_48d8_bfdf_8e6a87019579$aa2a543b_6c85_4c40_bbf3_145307646993$scene$aa2a543b_6c85_4c40_bbf3_145307646993$script
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
