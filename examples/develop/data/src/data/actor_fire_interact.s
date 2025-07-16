.module actor_fire_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_fire_interact = 255
.globl ___bank_actor_fire_interact

_actor_fire_interact::
        VM_LOCK

GBVM$actor_fire_interact$2c795840_2f90_422f_91e8_fa48fa27bdc5$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$025c7320_2eb1_4209_bf74_c1eef183ecc8$script = .
.globl GBVM$actor_fire_interact$2c795840_2f90_422f_91e8_fa48fa27bdc5$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$025c7320_2eb1_4209_bf74_c1eef183ecc8$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   3, 1, 16, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "\001\001\002\004@A\nBC\001\003\004\001\377\002\001Hot!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
