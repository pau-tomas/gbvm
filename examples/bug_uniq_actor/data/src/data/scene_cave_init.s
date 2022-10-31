.module scene_cave_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1

___bank_scene_cave_init = 255
.globl ___bank_scene_cave_init

_scene_cave_init::
        VM_LOCK

        VM_RESERVE              1

        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer_0, _script_timer_0
        VM_TIMER_SET            1, 1

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
