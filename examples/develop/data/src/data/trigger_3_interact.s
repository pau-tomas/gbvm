.module trigger_3_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_3_interact = 255
.globl ___bank_trigger_3_interact

_trigger_3_interact::
        VM_LOCK

GBVM$trigger_3_interact$cfafe4c9_2222_4aa6_becd_0da59d121731$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$456a497e_f7dd_4269_97d4_6657de1f1a33$script = .
.globl GBVM$trigger_3_interact$cfafe4c9_2222_4aa6_becd_0da59d121731$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$456a497e_f7dd_4269_97d4_6657de1f1a33$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Still the best\012controller."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
