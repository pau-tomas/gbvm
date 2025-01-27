.module trigger_west_to_east_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _camera_settings, ___bank_scene_transition, _scene_transition

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_LOCAL = -5

___bank_trigger_west_to_east_interact = 255
.globl ___bank_trigger_west_to_east_interact

_trigger_west_to_east_interact::
        VM_LOCK

        VM_RESERVE              5

        ; Load Scene
        ; -- Fetch player ypos
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP1_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2304
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP1_LOCAL
            .R_INT16    7
            .R_OPERATOR .SHL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_transition

        ; Stop Script
        VM_STOP
