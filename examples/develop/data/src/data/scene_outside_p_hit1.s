.module scene_outside_p_hit1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_ACTOR = -4

___bank_scene_outside_p_hit1 = 255
.globl ___bank_scene_outside_p_hit1

_scene_outside_p_hit1::
        VM_RESERVE              4

        ; If Parameter 0 Equals 2
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 2, 1$, 0
        VM_JUMP                 2$
1$:
GBVM$scene_outside_p_hit1$b60279ed_20e8_4088_9b3d_b13473f85f7b$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$playerHit1Script = .
.globl GBVM$scene_outside_p_hit1$b60279ed_20e8_4088_9b3d_b13473f85f7b$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$scene$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$playerHit1Script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Emote
        VM_ACTOR_EMOTE          .LOCAL_ACTOR, ___bank_emote_surprise, _emote_surprise

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
