.module scene_1_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255


___bank_scene_1_init = 255
.globl ___bank_scene_1_init

_scene_1_init::
        VM_LOCK

        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Text Menu
        VM_OVERLAY_CLEAR        0, 0, 10, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      10, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      10, 14, 3
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Item 1\012\002\001Item 2"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        
        ; Terminate Test
        VM_TEST_TERMINATE .TEST_WAIT_VBL

        ; Stop Script
        VM_STOP
