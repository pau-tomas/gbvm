.module actor_save_point_0_interact

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_HAS_LOADED = -1

___bank_actor_save_point_0_interact = 255
.globl ___bank_actor_save_point_0_interact

_actor_save_point_0_interact::
        VM_LOCK

        VM_RESERVE              1

GBVM$actor_save_point_0_interact$b483e0a5_c565_47d0_b6ae_ae637f2259e2$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script = .
.globl GBVM$actor_save_point_0_interact$b483e0a5_c565_47d0_b6ae_ae637f2259e2$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script
        ; Text Multiple Choice
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002Save Game\012\003\003\003Cancel"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S5A2_SAVE_CHOICE, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 2
            .MENUITEM           1, 1, 0, 0, 0, 2
            .MENUITEM           1, 2, 0, 0, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_save_point_0_interact$788e7d33_2657_4f44_b620_9d28e9b916fb$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script = .
.globl GBVM$actor_save_point_0_interact$788e7d33_2657_4f44_b620_9d28e9b916fb$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script
        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_S5A2_SAVE_CHOICE, 0, 1$, 0
        VM_JUMP                 2$
1$:
GBVM$actor_save_point_0_interact$3e99a702_de05_418b_b1c9_d4d05b8ec567$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script = .
.globl GBVM$actor_save_point_0_interact$3e99a702_de05_418b_b1c9_d4d05b8ec567$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script
        ; Save Data to Slot 0
        VM_RAISE                EXCEPTION_SAVE, 1
            .SAVE_SLOT 0
        VM_POLL_LOADED          .LOCAL_TMP0_HAS_LOADED
        VM_IF_CONST             .EQ, .LOCAL_TMP0_HAS_LOADED, 1, 3$, 0

GBVM$actor_save_point_0_interact$e2a6baab_a861_4509_b188_dc491d05e664$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script = .
.globl GBVM$actor_save_point_0_interact$e2a6baab_a861_4509_b188_dc491d05e664$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script
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

GBVM$actor_save_point_0_interact$6e43096c_45c1_434d_bfb6_85330670f9b2$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script = .
.globl GBVM$actor_save_point_0_interact$6e43096c_45c1_434d_bfb6_85330670f9b2$f8f027ef_b818_4038_9eda_0ac477facb41$actor$dee20f46_fcaa_4473_94b1_9817dbd99fd8$script
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
GBVM$actor_save_point_0_interact$autofade$f8f027ef_b818_4038_9eda_0ac477facb41$scene$f8f027ef_b818_4038_9eda_0ac477facb41$script = .
.globl GBVM$actor_save_point_0_interact$autofade$f8f027ef_b818_4038_9eda_0ac477facb41$scene$f8f027ef_b818_4038_9eda_0ac477facb41$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_IN              1

4$:

GBVM_END$actor_save_point_0_interact$3e99a702_de05_418b_b1c9_d4d05b8ec567 = .
.globl GBVM_END$actor_save_point_0_interact$3e99a702_de05_418b_b1c9_d4d05b8ec567
2$:

GBVM_END$actor_save_point_0_interact$788e7d33_2657_4f44_b620_9d28e9b916fb = .
.globl GBVM_END$actor_save_point_0_interact$788e7d33_2657_4f44_b620_9d28e9b916fb
        ; Stop Script
        VM_STOP
