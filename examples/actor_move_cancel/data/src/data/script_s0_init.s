.module script_s0_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1

___bank_script_s0_init = 255
.globl ___bank_script_s0_init

_script_s0_init::
        VM_LOCK

        VM_RESERVE              1

        ; Variable Set To False
        VM_SET_CONST            VAR_S0A0_KILLED, 0

        ; Variable Set To False
        VM_SET_CONST            VAR_S0A0_KILLED_1, 0

        ; Variable Set To False
        VM_SET_CONST            VAR_S0A0_KILLED_2, 0

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_0, _script_input_0
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_1, _script_input_1
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
