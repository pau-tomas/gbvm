.module script_s9_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1

___bank_script_s9_init = 255
.globl ___bank_script_s9_init

_script_s9_init::
        VM_LOCK

        VM_RESERVE              1

        ; Music Routine Attach
        VM_MUSIC_ROUTINE        0, ___bank_script_music_0, _script_music_0

        ; Music Routine Attach
        VM_MUSIC_ROUTINE        1, ___bank_script_music_0, _script_music_0

        ; Music Routine Attach
        VM_MUSIC_ROUTINE        2, ___bank_script_music_0, _script_music_0

        ; Music Routine Attach
        VM_MUSIC_ROUTINE        3, ___bank_script_music_0, _script_music_0

        ; Music Play
        VM_MUSIC_PLAY           ___bank_track_zilog_headbang_routine__Data, _track_zilog_headbang_routine__Data, .MUSIC_LOOP

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
