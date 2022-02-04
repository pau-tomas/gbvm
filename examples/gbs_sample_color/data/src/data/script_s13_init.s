.module script_s13_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_script_s13_init = 255
.globl ___bank_script_s13_init

_script_s13_init::
        VM_LOCK

        VM_RESERVE              4

        ; If Variable True
        VM_IF_CONST .GT         VAR_QUEST10, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

2$:

        ; Call Script: Init Menu
        VM_CALL_FAR             ___bank_script_init_menu, _script_init_menu

        ; Music Play
        VM_MUSIC_PLAY           ___bank_track_rulz_undergroundcave__Data, _track_rulz_undergroundcave__Data, .MUSIC_LOOP

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
