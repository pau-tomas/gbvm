.module script_input

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input = 255
.globl ___bank_script_input

_script_input::
        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_RTC_STOP, 0, 1$, 0
        ; Stop Clock
        VM_RTC_START            .RTC_STOP

        ; Variable Set To
        VM_SET_CONST            VAR_RTC_STOP, 1

        VM_JUMP                 2$
1$:
        ; Start Clock
        VM_RTC_START            .RTC_START

        ; Variable Set To
        VM_SET_CONST            VAR_RTC_STOP, 0

2$:

        ; Stop Script
        VM_STOP
