.module trigger_1_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_1_interact = 255
.globl ___bank_trigger_1_interact

_trigger_1_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT
        VM_ACTOR_SET_FLAGS      .LOCAL_ACTOR, 0, .ACTOR_FLAG_ANIM_NOLOOP

        ; Stop Script
        VM_STOP
