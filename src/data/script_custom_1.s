.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

___bank_EMOTEFN01 = 255
.globl ___bank_EMOTEFN01

ACTOR = -4

; Given actor displays an emote and moves to x, y
;  ARG0 - bank
;  ARG1 - return address
;
;  ARG2 - y
;  ARG3 - x
;  ARG4 - Actor Index
_EMOTEFN01::
        ; Instance local actor with function parameters
        VM_PUSHVALUE            .ARG4   ; Actor Index
        VM_PUSHVALUE            .ARG4   ; x
        VM_PUSHVAlUE            .ARG4   ; y
        VM_PUSH                 ^/(.ACTOR_ATTR_H_FIRST)/
        ; VM_PUSH                 ^/(.ACTOR_ATTR_H_FIRST | .ACTOR_ATTR_CHECK_COLL)/
 
        ; Emote
        ; VM_ACTOR_EMOTE          ACTOR, ___bank_spritesheet_1, _spritesheet_1

        ; Move to
        VM_ACTOR_MOVE_TO        ACTOR

        VM_POP                  4

        VM_RET_FAR_N            1               ; return from far call and dispose 1 argument on stack
