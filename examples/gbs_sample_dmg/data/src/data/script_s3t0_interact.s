.module script_s3t0_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_outside, _scene_outside

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_s3t0_interact = 255
.globl ___bank_script_s3t0_interact

_script_s3t0_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 3456
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 3328
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_outside

        ; Stop Script
        VM_STOP
