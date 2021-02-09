.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

___bank_script_s2_timer2 = 255
.globl ___bank_script_s2_timer2
.globl ___bank_tileset_6, _tileset_6

_script_s2_timer2::
        VM_PUSH_CONST           640
        VM_PUSH_CONST           640
        VM_PUSH_CONST           115
        VM_PROJECTILE_LAUNCH    0, .ARG2

        VM_SET_CONST            .ARG2, 320
        VM_SET_CONST            .ARG1, 1280
        VM_SET_CONST            .ARG0, 60
        VM_PROJECTILE_LAUNCH    1, .ARG2

        VM_IF_CONST     .EQ     VAR_S2_FLOWER_STATE, 0, 1$, 0

        VM_REPLACE_TILE         0x40, ___bank_tileset_6, _tileset_6, 0, 1
        VM_SET_CONST            VAR_S2_FLOWER_STATE, 0
        VM_STOP

1$:
        VM_REPLACE_TILE         0x40, ___bank_tileset_6, _tileset_6, 1, 1
        VM_SET_CONST            VAR_S2_FLOWER_STATE, 1
        VM_STOP
