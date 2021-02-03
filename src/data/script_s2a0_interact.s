.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255



___bank_script_s2a0_interact = 255
.globl ___bank_script_s2a0_interact

.globl _waveform_0, ___bank_waveform_0, ___size_waveform_0

_script_s2a0_interact::

        VM_PUSH_CONST           1
        VM_ACTOR_EMOTE          .ARG0, ___bank_spritesheet_1, _spritesheet_1

        ;VM_SOUND_PLAY           2, 1, 0x4c,0x81,0x43,0x73,0x86
        VM_WAVE_PLAY             32, ___bank_waveform_0, _waveform_0, ___size_waveform_0 

        ; Text Dialogue
        ; VM_LOAD_TEXT            0
        ; .asciz "Hello!\n"
        ; VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_TEXT_IN_SPEED
        ; VM_DISPLAY_TEXT         0, 0, 0
        ; VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        ; VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_TEXT_OUT_SPEED
        ; VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        ; Stop Script
        VM_STOP
