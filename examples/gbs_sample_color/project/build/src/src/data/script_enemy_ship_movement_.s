.module script_enemy_ship_movement_

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_0_ACTOR = -9
.LOCAL_ACTOR = -4
.LOCAL_TMP1_LOCAL = -5
.LOCAL_TMP3_LOCAL = -5
.LOCAL_TMP5_LOCAL = -5
.LOCAL_TMP7_LOCAL = -5
.LOCAL_TMP2_LOCAL = -6
.LOCAL_TMP4_LOCAL = -6
.LOCAL_TMP6_LOCAL = -6
.LOCAL_TMP8_LOCAL = -6

___bank_script_enemy_ship_movement_ = 255
.globl ___bank_script_enemy_ship_movement_

_script_enemy_ship_movement_::
        VM_RESERVE              6

        ; Actor Move Relative
        ; -- Fetch [object Object] xpos
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP1_LOCAL
            .R_STOP
        ; -- Fetch [object Object] ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP2_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP1_LOCAL
            .R_INT16    -4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP2_LOCAL
            .R_INT16    -4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_DIAGONAL
        ; -- Move Actor
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move Relative
        ; -- Fetch [object Object] xpos
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP3_LOCAL
            .R_STOP
        ; -- Fetch [object Object] ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP4_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP3_LOCAL
            .R_INT16    4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP4_LOCAL
            .R_INT16    4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_DIAGONAL
        ; -- Move Actor
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR

        ; Launch Projectile In Direction
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    192
            .R_STOP
        VM_PROJECTILE_LAUNCH    1, .ARG2
        VM_POP                  3

        ; Actor Move Relative
        ; -- Fetch [object Object] xpos
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP5_LOCAL
            .R_STOP
        ; -- Fetch [object Object] ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP6_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP5_LOCAL
            .R_INT16    -4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP6_LOCAL
            .R_INT16    4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_DIAGONAL
        ; -- Move Actor
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move Relative
        ; -- Fetch [object Object] xpos
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP7_LOCAL
            .R_STOP
        ; -- Fetch [object Object] ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP8_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP7_LOCAL
            .R_INT16    4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP8_LOCAL
            .R_INT16    -4
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_DIAGONAL
        ; -- Move Actor
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_RESERVE              -6
        VM_RET_FAR_N            1
