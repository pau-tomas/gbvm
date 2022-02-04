.module script_timer_1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_timer_1 = 255
.globl ___bank_script_timer_1

_script_timer_1::
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S7_FLOWERSTATE, 16, 1$, 0
        ; Variable Set To Value
        VM_SET_CONST            VAR_S7_FLOWERSTATE, 16

        VM_JUMP                 2$
1$:
        ; Variable Set To Value
        VM_SET_CONST            VAR_S7_FLOWERSTATE, 9

2$:

        VM_PUSH_CONST           0x10
        VM_REPLACE_TILE         .ARG0, ___bank_tileset_outside, _tileset_outside , VAR_S7_FLOWERSTATE, 1
        VM_POP                  1

        ; Stop Script
        VM_STOP
