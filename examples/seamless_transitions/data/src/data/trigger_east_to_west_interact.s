.module trigger_east_to_west_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _camera_settings, ___bank_scene_transition, _scene_transition

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_ACTOR_POS = -4

___bank_trigger_east_to_west_interact = 255
.globl ___bank_trigger_east_to_west_interact

_trigger_east_to_west_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Load Scene
        ; -- Fetch player actorPosition
        VM_SET_CONST            .LOCAL_TMP1_ACTOR_POS, 0
        VM_ACTOR_GET_POS        .LOCAL_TMP1_ACTOR_POS
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    5120
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_TMP1_ACTOR_POS + 2)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_transition

        ; Stop Script
        VM_STOP
