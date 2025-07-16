.module script_thread

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_thread = 255
.globl ___bank_script_thread

_script_thread::
        VM_RESERVE              4

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2560
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    4352
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    .ACTOR_ATTR_H_FIRST
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    6144
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    5376
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    .ACTOR_ATTR_H_FIRST
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    5376
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    7936
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    .ACTOR_ATTR_H_FIRST
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        ; Stop Script
        VM_STOP
