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

GBVM$scene_1_init$autofade$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script = .
.globl GBVM$scene_1_init$autofade$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_1_init$d431fb53_f700_4813_a805_6f6924124408$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script = .
.globl GBVM$scene_1_init$d431fb53_f700_4813_a805_6f6924124408$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script
        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    512
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

GBVM$scene_1_init$ae88bf49_ba83_4772_ad92_bf5577fd2b52$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script = .
.globl GBVM$scene_1_init$ae88bf49_ba83_4772_ad92_bf5577fd2b52$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script
        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    512
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    640
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

GBVM$scene_1_init$072f13d6_0564_442b_9146_5827ed0fb2be$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script = .
.globl GBVM$scene_1_init$072f13d6_0564_442b_9146_5827ed0fb2be$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script
        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    1024
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    640
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, ^/(.ACTOR_ATTR_CHECK_COLL | .ACTOR_ATTR_H_FIRST)/
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

GBVM$scene_1_init$1b0bcb14_01cf_4fa3_800d_18b57c521a0a$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script = .
.globl GBVM$scene_1_init$1b0bcb14_01cf_4fa3_800d_18b57c521a0a$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script
        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    512
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    384
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

GBVM$scene_1_init$179b5565_453b_483a_9c12_c24a9a152ea3$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script = .
.globl GBVM$scene_1_init$179b5565_453b_483a_9c12_c24a9a152ea3$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$scene$6e8e84f5_e349_4e91_958b_1ae0d5fdde9a$script
        VM_TEST_TERMINATE .TEST_WAIT_VBL

        ; Stop Script
        VM_STOP
