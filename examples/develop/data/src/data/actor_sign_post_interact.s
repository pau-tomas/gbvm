.module actor_sign_post_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_sign_post_interact = 255
.globl ___bank_actor_sign_post_interact

_actor_sign_post_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$actor_sign_post_interact$7ba26d3c_c1ca_46c8_a4ae_ed0a431b1d03$3509d273_bf7e_4946_89ce_a489df5a449d$actor$822a9491_3999_4d38_baa2_11cd379dcbb7$script = .
.globl GBVM$actor_sign_post_interact$7ba26d3c_c1ca_46c8_a4ae_ed0a431b1d03$3509d273_bf7e_4946_89ce_a489df5a449d$actor$822a9491_3999_4d38_baa2_11cd379dcbb7$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Try to get the ice\012block to the mark."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_sign_post_interact$1cf687c1_e1fe_4e89_a7ef_9ddc6412ef4f$3509d273_bf7e_4946_89ce_a489df5a449d$actor$822a9491_3999_4d38_baa2_11cd379dcbb7$script = .
.globl GBVM$actor_sign_post_interact$1cf687c1_e1fe_4e89_a7ef_9ddc6412ef4f$3509d273_bf7e_4946_89ce_a489df5a449d$actor$822a9491_3999_4d38_baa2_11cd379dcbb7$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "If you get stuck,\012I'll reset it!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_sign_post_interact$a50d16e9_2660_4fde_94c2_825e6fe799ee$3509d273_bf7e_4946_89ce_a489df5a449d$actor$822a9491_3999_4d38_baa2_11cd379dcbb7$script = .
.globl GBVM$actor_sign_post_interact$a50d16e9_2660_4fde_94c2_825e6fe799ee$3509d273_bf7e_4946_89ce_a489df5a449d$actor$822a9491_3999_4d38_baa2_11cd379dcbb7$script
        ; Actor Set Position
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    6144
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    4608
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Position Actor
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Stop Script
        VM_STOP
