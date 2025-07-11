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
        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
