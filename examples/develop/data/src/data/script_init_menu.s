.module script_init_menu

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_init_menu = 255
.globl ___bank_script_init_menu

_script_init_menu::
GBVM$script_init_menu$078bea48_4423_443d_a079_cb9280aea0f6$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script = .
.globl GBVM$script_init_menu$078bea48_4423_443d_a079_cb9280aea0f6$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script
        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input, _script_input
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

GBVM_END$script_init_menu$078bea48_4423_443d_a079_cb9280aea0f6 = .
.globl GBVM_END$script_init_menu$078bea48_4423_443d_a079_cb9280aea0f6
        VM_RET_FAR
