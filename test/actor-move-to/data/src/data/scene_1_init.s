.module scene_1_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_scene_1_init = 255
.globl ___bank_scene_1_init

_scene_1_init::
        VM_LOCK

        VM_RESERVE              4

        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    1024
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    256
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    .ACTOR_ATTR_H_FIRST
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    1024
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1280
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    .ACTOR_ATTR_H_FIRST
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    2048
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1280
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    ^/(.ACTOR_ATTR_CHECK_COLL_WALLS | .ACTOR_ATTR_CHECK_COLL_ACTORS | .ACTOR_ATTR_H_FIRST)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    1024
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    768
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    .ACTOR_ATTR_H_FIRST
            .R_REF_SET  ^/(.LOCAL_ACTOR + 3)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_TEST_TERMINATE .TEST_WAIT_VBL

        ; Stop Script
        VM_STOP
