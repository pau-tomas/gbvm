.module actor_3_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_actor_3_update = 255
.globl ___bank_actor_3_update

_actor_3_update::
        VM_RESERVE              4

1$:
GBVM$actor_3_update$ca4d3229_1dbe_40c6_ba7f_a6ddba966a9b$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$88dde917_1f7c_4615_9fda_88b523406b1d$updateScript = .
.globl GBVM$actor_3_update$ca4d3229_1dbe_40c6_ba7f_a6ddba966a9b$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$88dde917_1f7c_4615_9fda_88b523406b1d$updateScript
        ; Variable L0 = VAR_S7A1_LAUNCHANGLE+8
        VM_RPN
            .R_REF      VAR_S7A1_LAUNCHANGLE
            .R_INT16    8
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_S7A1_LAUNCHANGLE
            .R_STOP

GBVM$actor_3_update$0eed0a23_8f1b_4088_8120_e0b1a750aa38$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$88dde917_1f7c_4615_9fda_88b523406b1d$updateScript = .
.globl GBVM$actor_3_update$0eed0a23_8f1b_4088_8120_e0b1a750aa38$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$88dde917_1f7c_4615_9fda_88b523406b1d$updateScript
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Launch Projectile In Angle
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -256
            .R_OPERATOR .ADD
            .R_REF      VAR_S7A1_LAUNCHANGLE
            .R_STOP
        VM_PROJECTILE_LAUNCH    1, .ARG2
        VM_POP                  3

GBVM$actor_3_update$2cd0d994_2fcd_4a33_b819_08602dce33a6$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$88dde917_1f7c_4615_9fda_88b523406b1d$updateScript = .
.globl GBVM$actor_3_update$2cd0d994_2fcd_4a33_b819_08602dce33a6$2017e4bb_16d3_47bc_a86c_9c47e1860e0c$actor$88dde917_1f7c_4615_9fda_88b523406b1d$updateScript
        ; Wait 60 frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 60
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
