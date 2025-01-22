.module scene_2_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_2_init = 255
.globl ___bank_scene_2_init

_scene_2_init::
        VM_LOCK

        VM_RESERVE              4

GBVM$scene_2_init$85f8a04c_f0eb_4a3e_a008_fb163e741dd5$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script = .
.globl GBVM$scene_2_init$85f8a04c_f0eb_4a3e_a008_fb163e741dd5$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

GBVM$scene_2_init$autofade$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script = .
.globl GBVM$scene_2_init$autofade$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_2_init$40b276b3_217b_49f3_8d49_f394f03cc72b$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script = .
.globl GBVM$scene_2_init$40b276b3_217b_49f3_8d49_f394f03cc72b$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script
        ; Wait 1 frames
        VM_IDLE

GBVM$scene_2_init$f6e56de0_f5a0_47a1_bcce_1f7ebed641b7$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script = .
.globl GBVM$scene_2_init$f6e56de0_f5a0_47a1_bcce_1f7ebed641b7$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$scene$7d976213_19b0_4389_b7c6_5c1c5c0ee24a$script
        VM_TEST_TERMINATE	.TEST_WAIT_VBL

        ; Stop Script
        VM_STOP
