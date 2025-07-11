.module actor_turnip_1_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -1

___bank_actor_turnip_1_interact = 255
.globl ___bank_actor_turnip_1_interact

_actor_turnip_1_interact::
        VM_RESERVE              1

        ; If Parameter 0 Equals 0
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 0, 1$, 0
        VM_JUMP                 2$
1$:
GBVM$actor_turnip_1_interact$d8c316d3_0e08_4f7b_923e_72c6d7bc9c96$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$actor_turnip_1_interact$d8c316d3_0e08_4f7b_923e_72c6d7bc9c96$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Call Script: Turnip Collisions
        VM_PUSH_CONST           1 ; Actor 0
        VM_PUSH_REFERENCE       VAR_TURNIP_COUNTER ; Variable V1
        VM_PUSH_REFERENCE       VAR_S5A5_DEFEATED ; Variable V0
        VM_CALL_FAR             ___bank_script_turnip_collisions, _script_turnip_collisions

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
