.module actor_chest_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_chest_interact = 255
.globl ___bank_actor_chest_interact

_actor_chest_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$actor_chest_interact$ea4b563c_2be6_4022_845d_a436911059c5$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script = .
.globl GBVM$actor_chest_interact$ea4b563c_2be6_4022_845d_a436911059c5$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script
        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_QUEST10, 0, 1$, 0
GBVM$actor_chest_interact$fe430876_a9e8_4f85_85fb_7fbe70b81a63$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script = .
.globl GBVM$actor_chest_interact$fe430876_a9e8_4f85_85fb_7fbe70b81a63$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_OPEN
        VM_ACTOR_SET_FLAGS      .LOCAL_ACTOR, 0, .ACTOR_FLAG_ANIM_NOLOOP

GBVM$actor_chest_interact$7f0ecbb1_df33_4802_8b69_ab68970f7562$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script = .
.globl GBVM$actor_chest_interact$7f0ecbb1_df33_4802_8b69_ab68970f7562$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Wow! Found\012GOLD COIN."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$actor_chest_interact$65f97ab7_ef10_4ce2_899c_946a6cf420e3$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script = .
.globl GBVM$actor_chest_interact$65f97ab7_ef10_4ce2_899c_946a6cf420e3$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script
        ; Variable Set To
        VM_SET_CONST            VAR_QUEST10, 1

        VM_JUMP                 2$
1$:
GBVM$actor_chest_interact$4dc1d020_c2a6_402d_b092_10f0e5025af3$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script = .
.globl GBVM$actor_chest_interact$4dc1d020_c2a6_402d_b092_10f0e5025af3$a15eed10_615c_488a_b972_b4b37ccfc14e$actor$114806de_0098_4bac_a152_7f61497f7c99$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Empty..."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

2$:

GBVM_END$actor_chest_interact$ea4b563c_2be6_4022_845d_a436911059c5 = .
.globl GBVM_END$actor_chest_interact$ea4b563c_2be6_4022_845d_a436911059c5
        ; Stop Script
        VM_STOP
