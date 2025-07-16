.module actor_turnip_1_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_turnip_1_update = 255
.globl ___bank_actor_turnip_1_update

_actor_turnip_1_update::
1$:
GBVM$actor_turnip_1_update$2750d901_daa4_441b_958a_9a49393a479d$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$updateScript = .
.globl GBVM$actor_turnip_1_update$2750d901_daa4_441b_958a_9a49393a479d$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$updateScript
        ; Call Script: Turnip Movement
        VM_PUSH_CONST           1 ; Actor 0
        VM_CALL_FAR             ___bank_script_turnip_movement, _script_turnip_movement

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
