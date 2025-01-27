.module actor_10_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_10_update = 255
.globl ___bank_actor_10_update

_actor_10_update::
1$:
        ; Call Script: enemies/ship/Enemy Ship Movement Diagonal
        VM_PUSH_CONST           9 ; Actor 0
        VM_CALL_FAR             ___bank_script_enemy_ship_movement_, _script_enemy_ship_movement_

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
