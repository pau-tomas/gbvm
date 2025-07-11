.module actor_sign_post_0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_sign_post_0_interact = 255
.globl ___bank_actor_sign_post_0_interact

_actor_sign_post_0_interact::
        VM_LOCK

GBVM$actor_sign_post_0_interact$3b39bf7d_5a47_4b97_bfd6_ef1759ec738b$f8f027ef_b818_4038_9eda_0ac477facb41$actor$0434c6f6_14c9_4bea_80fd_4a7818fc364d$script = .
.globl GBVM$actor_sign_post_0_interact$3b39bf7d_5a47_4b97_bfd6_ef1759ec738b$f8f027ef_b818_4038_9eda_0ac477facb41$actor$0434c6f6_14c9_4bea_80fd_4a7818fc364d$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "This way to\012Elephant!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
