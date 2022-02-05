.module script_timer_0

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_timer_0 = 255
.globl ___bank_script_timer_0

_script_timer_0::
                VM_PUSH_CONST           0
                VM_PUSH_CONST           0
                VM_PUSH_CONST           0
                VM_RTC_LATCH
                VM_RTC_GET              .ARG2, .RTC_SECONDS
                VM_RTC_GET              .ARG1, .RTC_MINUTES 
                VM_RTC_GET              .ARG0, .RTC_HOURS 
                VM_RPN
                    .R_REF      .ARG0
                    .R_INT8     10
                    .R_OPERATOR .DIV
                    .R_REF      .ARG0
                    .R_INT8     10
                    .R_OPERATOR .MOD
                    .R_REF      .ARG1
                    .R_INT8     10
                    .R_OPERATOR .DIV
                    .R_REF      .ARG1
                    .R_INT8     10
                    .R_OPERATOR .MOD
                    .R_REF      .ARG2
                    .R_INT8     10
                    .R_OPERATOR .DIV
                    .R_REF      .ARG2
                    .R_INT8     10
                    .R_OPERATOR .MOD
                    .R_STOP
        
                VM_REPLACE_TILE_XY      12, 17, ___bank_tileset_digits, _tileset_digits, .ARG5
                VM_REPLACE_TILE_XY      13, 17, ___bank_tileset_digits, _tileset_digits, .ARG4
                VM_REPLACE_TILE_XY      15, 17, ___bank_tileset_digits, _tileset_digits, .ARG3
                VM_REPLACE_TILE_XY      16, 17, ___bank_tileset_digits, _tileset_digits, .ARG2
                VM_REPLACE_TILE_XY      18, 17, ___bank_tileset_digits, _tileset_digits, .ARG1
                VM_REPLACE_TILE_XY      19, 17, ___bank_tileset_digits, _tileset_digits, .ARG0
        
                VM_POP                  6       ; free results of rpn
        
                VM_POP                  3
        
                VM_PUSH_CONST           10
                VM_REPLACE_TILE_XY      14, 17, ___bank_tileset_digits, _tileset_digits, .ARG0
                VM_REPLACE_TILE_XY      17, 17, ___bank_tileset_digits, _tileset_digits, .ARG0
                VM_POP                  1
        
                VM_STOP
        

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "hello"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
