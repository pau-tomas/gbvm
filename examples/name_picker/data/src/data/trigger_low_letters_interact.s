.module trigger_low_letters_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_low_letters_interact = 255
.globl ___bank_trigger_low_letters_interact

_trigger_low_letters_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Store Position In Variables
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_REF_SET  VAR_TEMP_0
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_REF_SET  VAR_TEMP_1
            .R_STOP

        ; Variables .SUB Value
        VM_RPN
            .R_REF      VAR_TEMP_0
            .R_INT16    11
            .R_OPERATOR .SUB
            .R_REF_SET  VAR_TEMP_0
            .R_STOP

        ; Variables .SUB Value
        VM_RPN
            .R_REF      VAR_TEMP_1
            .R_INT16    2
            .R_OPERATOR .SUB
            .R_REF_SET  VAR_TEMP_1
            .R_STOP

        ; Variables .DIV Value
        VM_RPN
            .R_REF      VAR_TEMP_1
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET  VAR_TEMP_1
            .R_STOP

        ; Variable Set To Value
        VM_SET_CONST            VAR_S0T1_LOCAL_0, 7

        ; Variables .MUL
        VM_RPN
            .R_REF      VAR_S0T1_LOCAL_0
            .R_REF      VAR_TEMP_1
            .R_OPERATOR .MUL
            .R_REF_SET  VAR_S0T1_LOCAL_0
            .R_STOP

        ; Variables .ADD
        VM_RPN
            .R_REF      VAR_S0T1_LOCAL_0
            .R_REF      VAR_TEMP_0
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_S0T1_LOCAL_0
            .R_STOP

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_S0T1_LOCAL_0
            .R_INT16    26
            .R_OPERATOR .LT
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1
        VM_JUMP                 2$
1$:
        ; Variables .ADD Value
        VM_RPN
            .R_REF      VAR_S0T1_LOCAL_0
            .R_INT16    35
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_S0T1_LOCAL_0
            .R_STOP

        ; Switch Variable
        VM_SWITCH               VAR_STRING_INDEX, 5, 0
        .dw 0, 3$
        .dw 1, 4$
        .dw 2, 5$
        .dw 3, 6$
        .dw 4, 7$

        ; Variable Copy
        VM_SET                  VAR_STRING_4_, VAR_S0T1_LOCAL_0

        VM_JUMP                 8$
        ; case 0:
3$:
        ; Variable Copy
        VM_SET                  VAR_STRING_0_, VAR_S0T1_LOCAL_0

        VM_JUMP                 8$
        ; case 1:
4$:
        ; Variable Copy
        VM_SET                  VAR_STRING_1_, VAR_S0T1_LOCAL_0

        VM_JUMP                 8$
        ; case 2:
5$:
        ; Variable Copy
        VM_SET                  VAR_STRING_2_, VAR_S0T1_LOCAL_0

        VM_JUMP                 8$
        ; case 3:
6$:
        ; Variable Copy
        VM_SET                  VAR_STRING_3_, VAR_S0T1_LOCAL_0

        VM_JUMP                 8$
        ; case 4:
7$:
        ; Variable Copy
        VM_SET                  VAR_STRING_4_, VAR_S0T1_LOCAL_0

        VM_JUMP                 8$
8$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_STRING_INDEX
            .R_INT16    5
            .R_OPERATOR .LT
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 9$, 1
        VM_JUMP                 10$
9$:
        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_STRING_INDEX
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_STRING_INDEX
            .R_STOP

10$:

2$:

        ; Call Script: Update Input Fields
        VM_CALL_FAR             ___bank_script_update_input_fields, _script_update_input_fields

        ; Stop Script
        VM_STOP
