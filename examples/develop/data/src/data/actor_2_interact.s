.module actor_2_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_PARAM0_VALUE = -5

___bank_actor_2_interact = 255
.globl ___bank_actor_2_interact

_actor_2_interact::
        VM_RESERVE              5

        ; If Parameter 0 Equals 0
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 0, 1$, 0
        VM_JUMP                 2$
1$:
GBVM$actor_2_interact$2833c6bd_d177_4cfb_b6a6_63c6d79b7ba3$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script = .
.globl GBVM$actor_2_interact$2833c6bd_d177_4cfb_b6a6_63c6d79b7ba3$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Ouch!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_2_interact$26edd2c0_bd1f_454c_81fb_375f589292e7$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script = .
.globl GBVM$actor_2_interact$26edd2c0_bd1f_454c_81fb_375f589292e7$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Stop Script
        VM_STOP
2$:

        ; If Parameter 0 Equals 2
        VM_GET_TLOCAL           .LOCAL_TMP2_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP2_PARAM0_VALUE, 2, 3$, 0
        VM_JUMP                 4$
3$:
GBVM$actor_2_interact$6fa8247e_e06a_421e_b257_6e1551d04b23$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script = .
.globl GBVM$actor_2_interact$6fa8247e_e06a_421e_b257_6e1551d04b23$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Hey!!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_2_interact$f261f71c_d45f_4b11_9468_9fe3883c9abd$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script = .
.globl GBVM$actor_2_interact$f261f71c_d45f_4b11_9468_9fe3883c9abd$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$421f79f2_8b1c_457a_a3d7_9f3b8f8c1076$script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Stop Script
        VM_STOP
4$:

        ; Stop Script
        VM_STOP
