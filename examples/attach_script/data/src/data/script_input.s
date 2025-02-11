.module script_input

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1

___bank_script_input = 255
.globl ___bank_script_input

_script_input::
        VM_RESERVE              1

        ; Sound Play Beep
        VM_SFX_PLAY             ___bank_sound_legacy_0, _sound_legacy_0, ___mute_mask_sound_legacy_0, .SFX_PRIORITY_NORMAL

        ; Wait 30 Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Stop Script
        VM_STOP
