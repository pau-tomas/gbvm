.module script_input

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input = 255
.globl ___bank_script_input

_script_input::
        VM_RESERVE              4

GBVM$script_input$41c36cd9_f218_47db_94af_1c0b7ee256d2$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script = .
.globl GBVM$script_input$41c36cd9_f218_47db_94af_1c0b7ee256d2$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script
        ; Push Scene State
        VM_SCENE_PUSH

GBVM$script_input$dd21c899_25f7_41d8_a419_3a72e0b99ccb$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script = .
.globl GBVM$script_input$dd21c899_25f7_41d8_a419_3a72e0b99ccb$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script
        ; Load Scene
        ; Stop Script
        VM_STOP
