.module script_init_menu

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_init_menu = 255
.globl ___bank_script_init_menu

_script_init_menu::
        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input, _script_input
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        VM_RET_FAR
