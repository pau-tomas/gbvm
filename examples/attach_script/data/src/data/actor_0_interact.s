.module actor_0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_0_interact = 255
.globl ___bank_actor_0_interact

_actor_0_interact::
        VM_LOCK

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input, _script_input
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Stop Script
        VM_STOP
