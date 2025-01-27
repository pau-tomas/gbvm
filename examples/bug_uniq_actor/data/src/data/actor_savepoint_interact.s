.module actor_savepoint_interact

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_HAS_LOADED = -1

___bank_actor_savepoint_interact = 255
.globl ___bank_actor_savepoint_interact

_actor_savepoint_interact::
        VM_LOCK

        VM_RESERVE              1

        ; Save Data to Slot 0
        VM_RAISE                EXCEPTION_SAVE, 1
            .SAVE_SLOT 0
        VM_POLL_LOADED          .LOCAL_TMP0_HAS_LOADED
        VM_IF_CONST             .EQ, .LOCAL_TMP0_HAS_LOADED, 1, 1$, 0

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Saved!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 2$
1$:
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_IN              1

2$:

        ; Stop Script
        VM_STOP
