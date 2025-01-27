.module trigger_31_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_31_interact = 255
.globl ___bank_trigger_31_interact

_trigger_31_interact::
        VM_LOCK

        VM_RESERVE              4

        ; If
        ; -- If Falsy
        VM_IF_CONST             .EQ, VAR_S5T1_LOCAL_0, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Variable Set To
        VM_SET_CONST            VAR_S5T1_LOCAL_0, 1

        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Emote
        VM_ACTOR_EMOTE          .LOCAL_ACTOR, ___bank_emote_shock, _emote_shock

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "\001\001PLEASE\001\004 \001\001HELP!!\001\003\012My garden..."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

2$:

        ; Stop Script
        VM_STOP
