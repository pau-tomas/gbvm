.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255



___bank_script_s0a2_interact = 255
.globl ___bank_script_s0a2_interact

_script_s0a2_interact::

        VM_LOCK

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "It's dangerous to\ngo without docs."
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_TEXT_IN_SPEED
        VM_DISPLAY_TEXT         0, 0, 0
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_TEXT_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Emote
        ; VM_PUSH                 3
        ; VM_ACTOR_EMOTE          .ARG0, ___bank_spritesheet_1, _spritesheet_1
        ; VM_POP                  1

       ; Local Actor
        VM_PUSH                 1
        VM_PUSH                 20
        VM_PUSH                 20
        VM_PUSH                 ^/(.ACTOR_ATTR_H_FIRST | .ACTOR_ATTR_CHECK_COLL)/

        VM_PUSH                 1               ; Actor 1
        VM_PUSH                 1000              ; x
        VM_PUSH                 10              ; y
        VM_CALL_FAR             ___bank_EMOTEFN01, _EMOTEFN01

        VM_PUSH                 0               ; Actor 0
        VM_PUSH                 10               ; x
        VM_PUSH                 1000               ; y
        VM_CALL_FAR             ___bank_EMOTEFN01, _EMOTEFN01

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Check out\ngbstudio.dev/docs"
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_TEXT_IN_SPEED
        VM_DISPLAY_TEXT         0, 0, 0
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_TEXT_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        ; Stop Script
        VM_STOP
