.module script_timer_0

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_timer_0 = 255
.globl ___bank_script_timer_0

_script_timer_0::
        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Direction
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_INT16    0
            .R_STOP
        VM_PROJECTILE_LAUNCH    0, .ARG3
        VM_POP                  4

        ; Stop Script
        VM_STOP
