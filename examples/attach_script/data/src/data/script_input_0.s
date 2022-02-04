.module script_input_0

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1

___bank_script_input_0 = 255
.globl ___bank_script_input_0

_script_input_0::
        VM_RESERVE              1

        ; Sound Play Beep
        VM_SOUND_PLAY           30, 4, 0x01, 0xF2, 0x2C, 0xC0, 0x00
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Stop Script
        VM_STOP
