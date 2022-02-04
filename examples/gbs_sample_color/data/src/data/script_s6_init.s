.module script_s6_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_menu_page_2, _scene_menu_page_2

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5

___bank_script_s6_init = 255
.globl ___bank_script_s6_init

_script_s6_init::
        VM_LOCK

        VM_RESERVE              5

        ; If Variable True
        VM_IF_CONST .GT         VAR_QUEST1, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

2$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_QUEST2, 0, 3$, 0
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

4$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_QUEST3, 0, 5$, 0
        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

6$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_QUEST4, 0, 7$, 0
        VM_JUMP                 8$
7$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 4

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

8$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_QUEST5, 0, 9$, 0
        VM_JUMP                 10$
9$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

10$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_QUEST6, 0, 11$, 0
        VM_JUMP                 12$
11$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

12$:

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Music Play
        VM_MUSIC_PLAY           ___bank_track_rulz_pause_underground__Data, _track_rulz_pause_underground__Data, .MUSIC_LOOP

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Wait For Input
        VM_INPUT_WAIT           240

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_menu_page_2

        ; Stop Script
        VM_STOP
