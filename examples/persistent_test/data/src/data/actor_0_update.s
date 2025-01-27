.module actor_0_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_LOCAL = -5
.LOCAL_TMP3_LOCAL = -5
.LOCAL_TMP2_LOCAL = -6
.LOCAL_TMP4_LOCAL = -6

___bank_actor_0_update = 255
.globl ___bank_actor_0_update

_actor_0_update::
        VM_RESERVE              6

1$:
        ; Actor Move Relative
        ; -- Fetch $self$ xpos
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP1_LOCAL
            .R_STOP
        ; -- Fetch $self$ ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP2_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP1_LOCAL
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP2_LOCAL
            .R_INT16    -6
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move Relative
        ; -- Fetch $self$ xpos
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP3_LOCAL
            .R_STOP
        ; -- Fetch $self$ ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP4_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP3_LOCAL
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP4_LOCAL
            .R_INT16    6
            .R_OPERATOR .ADD
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
