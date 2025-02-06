.module scene_color_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255


___bank_scene_color_init = 255
.globl ___bank_scene_color_init

_scene_color_init::
        VM_LOCK

GBVM$scene_color_init$1ae57205_e4c7_4063_912e_2259d3dd2ef6$aa2a543b_6c85_4c40_bbf3_145307646993$scene$aa2a543b_6c85_4c40_bbf3_145307646993$script = .
.globl GBVM$scene_color_init$1ae57205_e4c7_4063_912e_2259d3dd2ef6$aa2a543b_6c85_4c40_bbf3_145307646993$scene$aa2a543b_6c85_4c40_bbf3_145307646993$script
        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input, _script_input
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

GBVM_END$scene_color_init$1ae57205_e4c7_4063_912e_2259d3dd2ef6 = .
.globl GBVM_END$scene_color_init$1ae57205_e4c7_4063_912e_2259d3dd2ef6
GBVM$scene_color_init$autofade$aa2a543b_6c85_4c40_bbf3_145307646993$scene$aa2a543b_6c85_4c40_bbf3_145307646993$script = .
.globl GBVM$scene_color_init$autofade$aa2a543b_6c85_4c40_bbf3_145307646993$scene$aa2a543b_6c85_4c40_bbf3_145307646993$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
