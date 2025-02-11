.module actor_14_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_14_update = 255
.globl ___bank_actor_14_update

_actor_14_update::
1$:
        ; Call Script: enemies/ship/Enemy Ship Movement Diagonal Top To Bottom
        VM_PUSH_CONST           13 ; Actor 0
        VM_CALL_FAR             ___bank_script_enemy_ship_movement__1, _script_enemy_ship_movement__1

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
