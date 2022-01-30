.module script_s4a3_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_s4a3_interact = 255
.globl ___bank_script_s4a3_interact

_script_s4a3_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 7

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_spritesheet_2, _spritesheet_2

        ; Stop Script
        VM_STOP
