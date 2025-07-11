.module actor_1_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_1_update = 255
.globl ___bank_actor_1_update

_actor_1_update::
        VM_RESERVE              4

1$:
        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    -1536
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    ^/(.ACTOR_ATTR_H_FIRST | .ACTOR_ATTR_RELATIVE_SNAP_TILE)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1536
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    ^/(.ACTOR_ATTR_H_FIRST | .ACTOR_ATTR_RELATIVE_SNAP_TILE)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
