.module script_s10t3_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_sample_town, _scene_sample_town

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_s10t3_interact = 255
.globl ___bank_script_s10t3_interact

_script_s10t3_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Move To
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 20352
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1664
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 15
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 128
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 6144
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_sample_town

        ; Stop Script
        VM_STOP
