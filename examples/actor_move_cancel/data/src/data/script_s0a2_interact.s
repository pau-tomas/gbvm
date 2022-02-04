.module script_s0a2_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -1

___bank_script_s0a2_interact = 255
.globl ___bank_script_s0a2_interact

_script_s0a2_interact::
        VM_RESERVE              1

        ; If Parameter 0 Equals 8
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST .EQ         .LOCAL_TMP0_PARAM0_VALUE, 8, 1$, 0
        VM_JUMP                 2$
1$:
        ; If Variable True
        VM_IF_CONST .GT         VAR_S0A0_KILLED_2, 0, 3$, 0
        ; Variable Set To True
        VM_SET_CONST            VAR_S0A0_KILLED_2, 1

        VM_JUMP                 4$
3$:
        ; Variable Set To False
        VM_SET_CONST            VAR_S0A0_KILLED_2, 0

4$:

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
