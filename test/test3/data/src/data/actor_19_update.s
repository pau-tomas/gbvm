.module actor_19_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP2_WAIT_ARGS = -4
.LOCAL_TMP1_WAIT_ARGS = -5

___bank_actor_19_update = 255
.globl ___bank_actor_19_update

_actor_19_update::
        VM_RESERVE              5

1$:
GBVM$actor_19_update$aafe0baa_085a_406d_87ad_ecbb716325fa$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript = .
.globl GBVM$actor_19_update$aafe0baa_085a_406d_87ad_ecbb716325fa$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript
        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT

GBVM$actor_19_update$f85a552f_2f0e_400d_b6c1_cf407e362e39$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript = .
.globl GBVM$actor_19_update$f85a552f_2f0e_400d_b6c1_cf407e362e39$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript
        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

GBVM$actor_19_update$ff27711b_06b3_44b4_b49a_095595919f4e$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript = .
.globl GBVM$actor_19_update$ff27711b_06b3_44b4_b49a_095595919f4e$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript
        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

GBVM$actor_19_update$0f8ec0b1_1aa7_4cf5_b7ef_21eb0012419f$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript = .
.globl GBVM$actor_19_update$0f8ec0b1_1aa7_4cf5_b7ef_21eb0012419f$f5dfb7bb_70b9_4a37_b4c7_1c289c2ed9ae$actor$8957ce01_b545_4218_8bb0_6f6683ac3515$updateScript
        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
