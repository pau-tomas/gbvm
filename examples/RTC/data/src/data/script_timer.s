.module script_timer

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_timer = 255
.globl ___bank_script_timer

_script_timer::
        ; Clock: Store Clock Time In Variables
        
        VM_RTC_LATCH
        VM_RTC_GET              VAR_SECONDS, .RTC_SECONDS 
        VM_RTC_GET              VAR_S0_MINUTES, .RTC_MINUTES 
        VM_RTC_GET              VAR_S0_HOURS, .RTC_HOURS 
        VM_RTC_GET              VAR_DAYS, .RTC_DAYS

        VM_LOAD_TEXT            4
            .dw VAR_DAYS, VAR_S0_HOURS, VAR_S0_MINUTES, VAR_SECONDS
            .asciz "\002\001DAY:%D8 \nTIME: %D2:%D2:%D2"
        VM_DISPLAY_TEXT

        ; Stop Script
        VM_STOP
