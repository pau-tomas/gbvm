.module actor_12_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_12_update = 255
.globl ___bank_actor_12_update

_actor_12_update::
1$:
        ; Call Script: enemies/ship/Enemy Ship Movement Diagonal Bottom To Top
        VM_PUSH_CONST           11 ; Actor 0
        VM_CALL_FAR             ___bank_script_enemy_ship_movement__0, _script_enemy_ship_movement__0

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
