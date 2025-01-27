.module actor_18_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_18_interact = 255
.globl ___bank_actor_18_interact

_actor_18_interact::
        VM_LOCK

        ; If
        ; -- If Falsy
        VM_IF_CONST             .EQ, VAR_S10A0_PLAYING, 0, 1$, 0
        ; Music Stop
        VM_MUSIC_STOP

        ; Variable Set To
        VM_SET_CONST            VAR_S10A0_PLAYING, 0

        ; Variable Set To
        VM_SET_CONST            VAR_MUSIC_HOUSE_PLAYING, 0

        VM_JUMP                 2$
1$:
        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_echo_example_Data, _song_echo_example_Data, .MUSIC_NO_LOOP

        ; Variable Set To
        VM_SET_CONST            VAR_S10A0_PLAYING, 1

        ; Variable Set To
        VM_SET_CONST            VAR_MUSIC_HOUSE_PLAYING, 1

2$:

        ; Stop Script
        VM_STOP
