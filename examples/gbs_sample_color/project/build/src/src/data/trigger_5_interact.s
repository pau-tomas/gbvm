.module trigger_5_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_IS_CGB = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_LOCAL = -5
.LOCAL_TMP3_LOCAL = -6

___bank_trigger_5_interact = 255
.globl ___bank_trigger_5_interact

_trigger_5_interact::
        VM_LOCK

        VM_RESERVE              6

        ; If Color Supported
        VM_GET_UINT8            .LOCAL_TMP0_IS_CGB, __is_CGB
        VM_IF_CONST             .NE, .LOCAL_TMP0_IS_CGB, 1, 1$, 0

        VM_JUMP                 2$
1$:
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

2$:

        ; Actor Move Relative
        ; -- Fetch $self$ xpos
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP2_LOCAL
            .R_STOP
        ; -- Fetch $self$ ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP3_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP2_LOCAL
            .R_INT16    -3
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP3_LOCAL
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Activate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_ACTIVATE       .LOCAL_ACTOR

        ; Stop Script
        VM_STOP
