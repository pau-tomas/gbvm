.module scene_1_p_hit1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -1

___bank_scene_1_p_hit1 = 255
.globl ___bank_scene_1_p_hit1

_scene_1_p_hit1::
        VM_RESERVE              1

        ; If Parameter 0 Equals 2
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 2, 1$, 0
        VM_JUMP                 2$
1$:
        ; Start Clock
        VM_RTC_START            .RTC_START

        ; Stop Clock
        VM_RTC_START            .RTC_STOP

        ; Clock: Set Clock Time 
        VM_PUSH_CONST           0 ; Seconds
        VM_PUSH_CONST           0 ; Minutes
        VM_PUSH_CONST           0 ; Hours
        VM_PUSH_CONST           0 ; Days
        
        VM_RTC_LATCH
        VM_RTC_SET              .ARG3, .RTC_SECONDS 
        VM_RTC_SET              .ARG2, .RTC_MINUTES 
        VM_RTC_SET              .ARG1, .RTC_HOURS 
        VM_RTC_SET              .ARG0, .RTC_DAYS 
        
        VM_POP                  4

        ; Clock: Store Clock Time In Variables
        
        VM_RTC_LATCH
        VM_RTC_GET              VAR_S0_MINUTES, .RTC_SECONDS 
        VM_RTC_GET              VAR_S0_MINUTES, .RTC_MINUTES 
        VM_RTC_GET              VAR_S0_MINUTES, .RTC_HOURS 
        VM_RTC_GET              VAR_S0_MINUTES, .RTC_DAYS

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
