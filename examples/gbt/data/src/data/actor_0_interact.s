.module actor_0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_0_interact = 255
.globl ___bank_actor_0_interact

_actor_0_interact::
        VM_LOCK

        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_S0A0_IS_PLAYING, 0, 1$, 0
        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_template_Data, _song_template_Data, .MUSIC_NO_LOOP

        ; Variable Set To
        VM_SET_CONST            VAR_S0A0_IS_PLAYING, 1

        VM_JUMP                 2$
1$:
        ; Music Stop
        VM_MUSIC_STOP

        ; Variable Set To
        VM_SET_CONST            VAR_S0A0_IS_PLAYING, 0

2$:

        ; Stop Script
        VM_STOP
