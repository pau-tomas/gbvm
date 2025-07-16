.module script_turnip_init

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -7
.SCRIPT_ARG_1_ACTOR = -8
.LOCAL_ACTOR = -4

___bank_script_turnip_init = 255
.globl ___bank_script_turnip_init

_script_turnip_init::
        VM_RESERVE              4

GBVM$script_turnip_init$e35c9478_d3ba_45f7_9e14_5eb38239eebb$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$startScript = .
.globl GBVM$script_turnip_init$e35c9478_d3ba_45f7_9e14_5eb38239eebb$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$startScript
        ; If
        ; -- If Truthy
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_0_VARIABLE
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1
        VM_JUMP                 2$
1$:
GBVM$script_turnip_init$ae86ba6a_86c1_4cfd_a2e7_319a2f88e517$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$startScript = .
.globl GBVM$script_turnip_init$ae86ba6a_86c1_4cfd_a2e7_319a2f88e517$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$startScript
        ; Actor Deactivate
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_1_ACTOR
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

GBVM$script_turnip_init$14d203e8_309b_4911_8726_f0b378d14acc$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$startScript = .
.globl GBVM$script_turnip_init$14d203e8_309b_4911_8726_f0b378d14acc$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$startScript
        ; Actor Set Position
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Position Actor
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_1_ACTOR
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

2$:

GBVM_END$script_turnip_init$e35c9478_d3ba_45f7_9e14_5eb38239eebb = .
.globl GBVM_END$script_turnip_init$e35c9478_d3ba_45f7_9e14_5eb38239eebb
        VM_RESERVE              -4
        VM_RET_FAR_N            2
