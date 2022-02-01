.module script_s0a1_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_ACTOR = -4

___bank_script_s0a1_interact = 255
.globl ___bank_script_s0a1_interact

_script_s0a1_interact::
        VM_RESERVE              4

        ; If Parameter 0 Equals 8
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST .EQ         .LOCAL_TMP0_PARAM0_VALUE, 8, 1$, 0
        VM_JUMP                 2$
1$:
        ; If Variable True
        VM_IF_CONST .GT         VAR_S0A0_KILLED_1, 0, 3$, 0
        ; Variable Set To True
        VM_SET_CONST            VAR_S0A0_KILLED_1, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        VM_ACTOR_MOVE_CANCEL    .LOCAL_ACTOR

        VM_JUMP                 4$
3$:
        ; Variable Set To False
        VM_SET_CONST            VAR_S0A0_KILLED_1, 0

4$:

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
