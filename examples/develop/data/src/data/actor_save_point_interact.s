.module actor_save_point_interact

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_HAS_LOADED = -1

___bank_actor_save_point_interact = 255
.globl ___bank_actor_save_point_interact

_actor_save_point_interact::
        VM_LOCK

        VM_RESERVE              1

GBVM$actor_save_point_interact$29a40699_3a4a_4c07_b140_29cac9cb6ba3$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script = .
.globl GBVM$actor_save_point_interact$29a40699_3a4a_4c07_b140_29cac9cb6ba3$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script
        ; Text Multiple Choice
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002Save Game\012\003\003\003Cancel"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S0A5_LOCAL_0, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 2
            .MENUITEM           1, 1, 0, 0, 0, 2
            .MENUITEM           1, 2, 0, 0, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_save_point_interact$4a6cab4d_d51e_411f_9283_57821e6700ef$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script = .
.globl GBVM$actor_save_point_interact$4a6cab4d_d51e_411f_9283_57821e6700ef$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script
        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_S0A5_LOCAL_0, 0, 1$, 0
        VM_JUMP                 2$
1$:
GBVM$actor_save_point_interact$3bffb17d_feaa_4ecd_a795_836c7b032ae3$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script = .
.globl GBVM$actor_save_point_interact$3bffb17d_feaa_4ecd_a795_836c7b032ae3$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script
        ; Save Data to Slot 0
        VM_RAISE                EXCEPTION_SAVE, 1
            .SAVE_SLOT 0
        VM_POLL_LOADED          .LOCAL_TMP0_HAS_LOADED
        VM_IF_CONST             .EQ, .LOCAL_TMP0_HAS_LOADED, 1, 3$, 0

GBVM$actor_save_point_interact$b8e821f8_9bbd_431f_863b_1874078e741d$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script = .
.globl GBVM$actor_save_point_interact$b8e821f8_9bbd_431f_863b_1874078e741d$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Game progress has\012been saved."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_save_point_interact$827a9c6a_94d0_4cc9_a08b_827d727db98a$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script = .
.globl GBVM$actor_save_point_interact$827a9c6a_94d0_4cc9_a08b_827d727db98a$5e64882f_8ce6_423e_b582_70fdb2142ff6$actor$b5594786_5675_48cf_b382_18b6341b855c$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "It is now safe to\012turn off your\012system."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 4$
3$:
GBVM$actor_save_point_interact$autofade$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script = .
.globl GBVM$actor_save_point_interact$autofade$5e64882f_8ce6_423e_b582_70fdb2142ff6$scene$5e64882f_8ce6_423e_b582_70fdb2142ff6$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_IN              1

4$:

GBVM_END$actor_save_point_interact$3bffb17d_feaa_4ecd_a795_836c7b032ae3 = .
.globl GBVM_END$actor_save_point_interact$3bffb17d_feaa_4ecd_a795_836c7b032ae3
2$:

GBVM_END$actor_save_point_interact$4a6cab4d_d51e_411f_9283_57821e6700ef = .
.globl GBVM_END$actor_save_point_interact$4a6cab4d_d51e_411f_9283_57821e6700ef
        ; Stop Script
        VM_STOP
