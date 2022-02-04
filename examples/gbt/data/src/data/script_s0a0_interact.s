.module script_s0a0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_s0a0_interact = 255
.globl ___bank_script_s0a0_interact

_script_s0a0_interact::
        VM_LOCK

        ; If Variable True
        VM_IF_CONST .GT         VAR_S0A0_IS_PLAYING, 0, 1$, 0
        ; Music Play
        VM_MUSIC_PLAY           ___bank_track_template__Data, _track_template__Data, .MUSIC_LOOP

        ; Variable Set To True
        VM_SET_CONST            VAR_S0A0_IS_PLAYING, 1

        VM_JUMP                 2$
1$:
        ; Music Stop
        VM_MUSIC_STOP

        ; Variable Set To False
        VM_SET_CONST            VAR_S0A0_IS_PLAYING, 0

2$:

        ; Stop Script
        VM_STOP
