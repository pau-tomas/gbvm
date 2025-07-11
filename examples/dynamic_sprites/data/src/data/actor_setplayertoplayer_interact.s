.module actor_setplayertoplayer_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_setplayertoplayer_interact = 255
.globl ___bank_actor_setplayertoplayer_interact

_actor_setplayertoplayer_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_player, _sprite_player

        ; Stop Script
        VM_STOP
