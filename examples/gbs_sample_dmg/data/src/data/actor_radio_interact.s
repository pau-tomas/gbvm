.module actor_radio_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_radio_interact = 255
.globl ___bank_actor_radio_interact

_actor_radio_interact::
        VM_LOCK

        ; If
        ; -- If Falsy
        VM_IF_CONST             .EQ, SYMBOL_1, 0, 1$, 0
        ; Music Stop
        VM_MUSIC_STOP

        ; Variable Set To
        VM_SET_CONST            SYMBOL_1, 0

        VM_JUMP                 2$
1$:
        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_gonaspace_Data, _song_rulz_gonaspace_Data, .MUSIC_NO_LOOP

        ; Variable Set To
        VM_SET_CONST            SYMBOL_1, 1

2$:

        ; Stop Script
        VM_STOP
