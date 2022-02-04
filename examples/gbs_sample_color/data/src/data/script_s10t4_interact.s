.module script_s10t4_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_player_s_house, _scene_player_s_house

.area _CODE_255

.LOCAL_TMP0_INPUT = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_WAIT_ARGS = -5

___bank_script_s10t4_interact = 255
.globl ___bank_script_s10t4_interact

_script_s10t4_interact::
        VM_LOCK

        VM_RESERVE              5

        ; If Input
        VM_GET_INT8             .LOCAL_TMP0_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP0_INPUT
            .R_INT8     4
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST .NE         .ARG0, 0, 1$, 1

        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Direction
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_UP

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1152
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 768
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_UP
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_player_s_house

2$:

        ; Stop Script
        VM_STOP
