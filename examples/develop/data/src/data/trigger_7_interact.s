.module trigger_7_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_7_interact = 255
.globl ___bank_trigger_7_interact

_trigger_7_interact::
        VM_LOCK

GBVM$trigger_7_interact$e8f54e0e_320c_48b4_9436_be7d7c5257ec$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$a9fcbe4f_495e_41d6_b796_3baa4e065946$script = .
.globl GBVM$trigger_7_interact$e8f54e0e_320c_48b4_9436_be7d7c5257ec$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$a9fcbe4f_495e_41d6_b796_3baa4e065946$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Such a nice day to\012go into town!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
