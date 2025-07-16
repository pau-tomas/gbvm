.module trigger_4_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_4_interact = 255
.globl ___bank_trigger_4_interact

_trigger_4_interact::
        VM_LOCK

GBVM$trigger_4_interact$4f2a19c9_4069_4d13_9f38_0a436c2a4424$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$020e98c8_b9ac_4936_80cb_c6c609b97fab$script = .
.globl GBVM$trigger_4_interact$4f2a19c9_4069_4d13_9f38_0a436c2a4424$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$020e98c8_b9ac_4936_80cb_c6c609b97fab$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "My trusty\012Game Box 128."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
