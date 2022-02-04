.module script_s8t1_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_dancefloor, _scene_dancefloor

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_s8t1_interact = 255
.globl ___bank_script_s8t1_interact

_script_s8t1_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1152
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1664
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_dancefloor

        ; Stop Script
        VM_STOP
