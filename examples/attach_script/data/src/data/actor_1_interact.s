.module actor_1_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_1_interact = 255
.globl ___bank_actor_1_interact

_actor_1_interact::
        VM_LOCK

        ; Input Script Remove
        VM_INPUT_DETACH         128

        ; Stop Script
        VM_STOP
