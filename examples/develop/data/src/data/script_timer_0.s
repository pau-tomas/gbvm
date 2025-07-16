.module script_timer_0

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_timer_0 = 255
.globl ___bank_script_timer_0

_script_timer_0::
GBVM$script_timer_0$b0e5515b_4039_45b7_8837_5f7dcd37cb52$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script = .
.globl GBVM$script_timer_0$b0e5515b_4039_45b7_8837_5f7dcd37cb52$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script
        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_S7_FLOWERSTATE
            .R_INT16    16
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1
GBVM$script_timer_0$c2f0558f_fbaa_4b09_a77a_0be234c9aec3$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script = .
.globl GBVM$script_timer_0$c2f0558f_fbaa_4b09_a77a_0be234c9aec3$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script
        ; Variable Set To
        VM_SET_CONST            VAR_S7_FLOWERSTATE, 16

        VM_JUMP                 2$
1$:
GBVM$script_timer_0$190d959a_f913_43a4_bd17_d66232bdce8b$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script = .
.globl GBVM$script_timer_0$190d959a_f913_43a4_bd17_d66232bdce8b$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script
        ; Variable Set To
        VM_SET_CONST            VAR_S7_FLOWERSTATE, 9

2$:

GBVM_END$script_timer_0$b0e5515b_4039_45b7_8837_5f7dcd37cb52 = .
.globl GBVM_END$script_timer_0$b0e5515b_4039_45b7_8837_5f7dcd37cb52
GBVM$script_timer_0$37f19a47_9fdb_4728_a6c8_eaa9c39550b1$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script = .
.globl GBVM$script_timer_0$37f19a47_9fdb_4728_a6c8_eaa9c39550b1$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$script
        VM_PUSH_CONST           0x10
        VM_REPLACE_TILE         .ARG0, ___bank_bg_outside_tileset, _bg_outside_tileset, VAR_S7_FLOWERSTATE, 1
        VM_POP                  1

        ; Stop Script
        VM_STOP
