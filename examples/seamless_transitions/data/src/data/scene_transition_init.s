.module scene_transition_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_east, _scene_east, ___bank_scene_west, _scene_west

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_ACTOR_DIR = -6
.LOCAL_TMP3_CAMERA_MOVE_ARGS = -6
.LOCAL_TMP4_CAMERA_MOVE_ARGS = -6
.LOCAL_TMP5_LOCAL = -6
.LOCAL_TMP7_LOCAL = -6
.LOCAL_TMP8_CAMERA_MOVE_ARGS = -6
.LOCAL_TMP9_CAMERA_MOVE_ARGS = -6
.LOCAL_TMP10_LOCAL = -6
.LOCAL_TMP12_LOCAL = -6
.LOCAL_TMP6_LOCAL = -7
.LOCAL_TMP11_LOCAL = -7

___bank_scene_transition_init = 255
.globl ___bank_scene_transition_init

_scene_transition_init::
        VM_LOCK

        VM_RESERVE              7

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; If Actor Facing Direction
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP2_ACTOR_DIR
        ; -- Calculate value
        VM_RPN
            .R_INT16    .DIR_RIGHT
            .R_STOP
        VM_IF                   .NE, ^/(.LOCAL_TMP2_ACTOR_DIR - 1)/, .ARG0, 1$, 1

        ; Camera Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    80
            .R_REF_SET  .LOCAL_TMP3_CAMERA_MOVE_ARGS
            .R_INT16    72
            .R_REF_SET  ^/(.LOCAL_TMP3_CAMERA_MOVE_ARGS + 1)/
            .R_STOP
        ; -- Move Camera
        VM_CAMERA_SET_POS       .LOCAL_TMP3_CAMERA_MOVE_ARGS

        ; Camera Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    240
            .R_REF_SET  .LOCAL_TMP4_CAMERA_MOVE_ARGS
            .R_INT16    72
            .R_REF_SET  ^/(.LOCAL_TMP4_CAMERA_MOVE_ARGS + 1)/
            .R_STOP
        ; -- Move Camera
        VM_CAMERA_MOVE_TO       .LOCAL_TMP4_CAMERA_MOVE_ARGS, 1, .CAMERA_UNLOCK

        ; Actor Move Relative
        ; -- Fetch $self$ xpos
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP5_LOCAL
            .R_STOP
        ; -- Fetch $self$ ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP6_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP5_LOCAL
            .R_INT16    3
            .R_OPERATOR .ADD
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP6_LOCAL
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Load Scene
        ; -- Fetch player ypos
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP7_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    128
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP7_LOCAL
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_east

        VM_JUMP                 2$
1$:
        ; Camera Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    240
            .R_REF_SET  .LOCAL_TMP8_CAMERA_MOVE_ARGS
            .R_INT16    72
            .R_REF_SET  ^/(.LOCAL_TMP8_CAMERA_MOVE_ARGS + 1)/
            .R_STOP
        ; -- Move Camera
        VM_CAMERA_SET_POS       .LOCAL_TMP8_CAMERA_MOVE_ARGS

        ; Camera Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    80
            .R_REF_SET  .LOCAL_TMP9_CAMERA_MOVE_ARGS
            .R_INT16    72
            .R_REF_SET  ^/(.LOCAL_TMP9_CAMERA_MOVE_ARGS + 1)/
            .R_STOP
        ; -- Move Camera
        VM_CAMERA_MOVE_TO       .LOCAL_TMP9_CAMERA_MOVE_ARGS, 1, .CAMERA_UNLOCK

        ; Actor Move Relative
        ; -- Fetch $self$ xpos
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP10_LOCAL
            .R_STOP
        ; -- Fetch $self$ ypos
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP11_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      .LOCAL_TMP10_LOCAL
            .R_INT16    -3
            .R_OPERATOR .ADD
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP11_LOCAL
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Load Scene
        ; -- Fetch player ypos
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF_SET  .LOCAL_TMP12_LOCAL
            .R_STOP
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2176
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      .LOCAL_TMP12_LOCAL
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_west

2$:

        ; Stop Script
        VM_STOP
