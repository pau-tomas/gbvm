.module trigger_24_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_dancefloor, _scene_dancefloor

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_24_interact = 255
.globl ___bank_trigger_24_interact

_trigger_24_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_24_interact$49e6ea56_1bf0_4773_99bf_fe64fcbb18fa$88f214e9_8604_47da_97a3_8400850cde77$trigger$ba9e2e58_75ee_4d3f_8c1e_7bcce4d7f970$script = .
.globl GBVM$trigger_24_interact$49e6ea56_1bf0_4773_99bf_fe64fcbb18fa$88f214e9_8604_47da_97a3_8400850cde77$trigger$ba9e2e58_75ee_4d3f_8c1e_7bcce4d7f970$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2304
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_dancefloor

        ; Stop Script
        VM_STOP
