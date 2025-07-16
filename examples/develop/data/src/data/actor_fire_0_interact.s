.module actor_fire_0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_fire_0_interact = 255
.globl ___bank_actor_fire_0_interact

_actor_fire_0_interact::
        VM_LOCK

GBVM$actor_fire_0_interact$54fbe459_14c2_4fca_933f_93203ffbb3f3$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$ee80f72c_ec7c_46d1_9653_23b16fcce2d9$script = .
.globl GBVM$actor_fire_0_interact$54fbe459_14c2_4fca_933f_93203ffbb3f3$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$ee80f72c_ec7c_46d1_9653_23b16fcce2d9$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   3, 1, 16, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "\001\001\002\004DE\nFG\001\003\004\001\377\002\001Also Hot!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
