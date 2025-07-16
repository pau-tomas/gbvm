.module actor_ice_block_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_PUSH_DIR_VAR = -5

___bank_actor_ice_block_interact = 255
.globl ___bank_actor_ice_block_interact

_actor_ice_block_interact::
        VM_LOCK

        VM_RESERVE              5

GBVM$actor_ice_block_interact$b64b6db6_c892_40be_9faf_6ac81861e610$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$b64b6db6_c892_40be_9faf_6ac81861e610$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; If Actor At Position
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    15
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    10
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 1$, 1

        VM_JUMP                 2$
1$:
GBVM$actor_ice_block_interact$d454b1ea_367d_442b_831b_6992b149eec8$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$d454b1ea_367d_442b_831b_6992b149eec8$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Push
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP1_PUSH_DIR_VAR
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_IF_CONST             .EQ, .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_UP, 3$, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_LEFT, 4$, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_RIGHT, 5$, 0
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    25600
            .R_OPERATOR .ADD
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_JUMP                 6$
3$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    25600
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_JUMP                 6$
4$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    25600
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
        VM_JUMP                 6$
5$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    25600
            .R_OPERATOR .ADD
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
6$:
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_CHECK_COLL
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

GBVM$actor_ice_block_interact$f8456d18_7123_47ab_a48a_dcae5fe02453$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$f8456d18_7123_47ab_a48a_dcae5fe02453$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; If Actor At Position
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    15
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    10
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 7$, 1

GBVM$actor_ice_block_interact$bea3f398_cf7f_423c_a9cb_7c0c0bb333c6$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$bea3f398_cf7f_423c_a9cb_7c0c0bb333c6$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Success!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_ice_block_interact$fa55067d_67a7_431e_bc63_f324dd08852f$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$fa55067d_67a7_431e_bc63_f324dd08852f$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; Variable Set To
        VM_SET_CONST            VAR_QUEST2, 1

GBVM$actor_ice_block_interact$271d582b_37a0_4ba2_b975_d2210c0b8ae5$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$271d582b_37a0_4ba2_b975_d2210c0b8ae5$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; Actor Activate
        VM_SET_CONST            .LOCAL_ACTOR, 6
        VM_ACTOR_ACTIVATE       .LOCAL_ACTOR

GBVM$actor_ice_block_interact$8c975a8d_c2fa_4d92_b426_70ff0f63d3bf$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$8c975a8d_c2fa_4d92_b426_70ff0f63d3bf$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        VM_JUMP                 8$
7$:
8$:

GBVM_END$actor_ice_block_interact$f8456d18_7123_47ab_a48a_dcae5fe02453 = .
.globl GBVM_END$actor_ice_block_interact$f8456d18_7123_47ab_a48a_dcae5fe02453
2$:

GBVM_END$actor_ice_block_interact$b64b6db6_c892_40be_9faf_6ac81861e610 = .
.globl GBVM_END$actor_ice_block_interact$b64b6db6_c892_40be_9faf_6ac81861e610
GBVM$actor_ice_block_interact$c3809f94_82d3_4acb_829c_a5d0b4baca21$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script = .
.globl GBVM$actor_ice_block_interact$c3809f94_82d3_4acb_829c_a5d0b4baca21$3509d273_bf7e_4946_89ce_a489df5a449d$actor$27de6d44_f7c0_48df_a952_2c87471bbfd4$script
        ; Variable Set To
        VM_SET_CONST            VAR_PUSHED_ICE_BLOCK, 1

        ; Stop Script
        VM_STOP
