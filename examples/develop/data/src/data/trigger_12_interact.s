.module trigger_12_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_12_interact = 255
.globl ___bank_trigger_12_interact

_trigger_12_interact::
        VM_LOCK

GBVM$trigger_12_interact$94dd6cc6_debb_4356_bde7_1af4c32b8f49$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$b4d78e56_064e_4ce3_b268_54cff4a5ac27$script = .
.globl GBVM$trigger_12_interact$94dd6cc6_debb_4356_bde7_1af4c32b8f49$c22cad6f_1191_4623_911d_1ec9a7b52fe6$trigger$b4d78e56_064e_4ce3_b268_54cff4a5ac27$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Check out\012gbstudio.dev/docs"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
