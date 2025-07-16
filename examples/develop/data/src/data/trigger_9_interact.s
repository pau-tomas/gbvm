.module trigger_9_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_9_interact = 255
.globl ___bank_trigger_9_interact

_trigger_9_interact::
        VM_LOCK

GBVM$trigger_9_interact$a2549f58_e720_4d4e_bae5_df7e1e610771$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$775c985a_e454_418a_bbc9_6e7dc4dd0fff$script = .
.globl GBVM$trigger_9_interact$a2549f58_e720_4d4e_bae5_df7e1e610771$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$775c985a_e454_418a_bbc9_6e7dc4dd0fff$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "My collection\012of games..."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
