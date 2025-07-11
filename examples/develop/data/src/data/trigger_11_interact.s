.module trigger_11_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_11_interact = 255
.globl ___bank_trigger_11_interact

_trigger_11_interact::
        VM_LOCK

GBVM$trigger_11_interact$a9398180_a336_494c_b090_938259c58ee4$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$89abaf5f_8130_4b23_ac2d_31c1d3e98aab$script = .
.globl GBVM$trigger_11_interact$a9398180_a336_494c_b090_938259c58ee4$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$89abaf5f_8130_4b23_ac2d_31c1d3e98aab$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Even more\012clothes..."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
