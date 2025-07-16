.module actor_sage_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_sage_interact = 255
.globl ___bank_actor_sage_interact

_actor_sage_interact::
        VM_LOCK

GBVM$actor_sage_interact$353bee92_fd23_468b_bf09_99a098d1629d$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script = .
.globl GBVM$actor_sage_interact$353bee92_fd23_468b_bf09_99a098d1629d$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "It's dangerous to\012go without docs."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_sage_interact$3f4b8292_f024_47fb_955d_f7f99a08415e$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script = .
.globl GBVM$actor_sage_interact$3f4b8292_f024_47fb_955d_f7f99a08415e$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script
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

GBVM$actor_sage_interact$89023ce1_b504_48b3_b0af_9cec0b868bb0$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script = .
.globl GBVM$actor_sage_interact$89023ce1_b504_48b3_b0af_9cec0b868bb0$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Also, try moving\012the rock outside."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_sage_interact$ac4ebd76_c81c_4f85_91f9_29cef760538c$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script = .
.globl GBVM$actor_sage_interact$ac4ebd76_c81c_4f85_91f9_29cef760538c$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$15d7cf30_df3a_427b_883a_996b605edb40$script
        ; Variable Set To
        VM_SET_CONST            VAR_QUEST4, 1

        ; Stop Script
        VM_STOP
