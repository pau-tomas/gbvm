.module script_s1_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_script_s1_init = 255
.globl ___bank_script_s1_init

_script_s1_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Music Play
        VM_MUSIC_PLAY           ___bank_track_dizzy__Data, _track_dizzy__Data, .MUSIC_LOOP

        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer_0, _script_timer_0
        VM_TIMER_SET            1, 1

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_1, _script_input_1
        VM_INPUT_ATTACH         240, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
