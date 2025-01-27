.module actor_oblivious_guy_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_oblivious_guy_interact = 255
.globl ___bank_actor_oblivious_guy_interact

_actor_oblivious_guy_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Check out this\012sweet duck!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Set To
        VM_SET_CONST            SYMBOL_14, 1

        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 6
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN

        ; Stop Script
        VM_STOP
