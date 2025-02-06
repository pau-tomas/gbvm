.module scene_setup_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_titlescreen, _scene_titlescreen, ___bank_scene_warning, _scene_warning

.area _CODE_255

.LOCAL_TMP0_IS_CGB = -4
.LOCAL_ACTOR = -4

___bank_scene_setup_init = 255
.globl ___bank_scene_setup_init

_scene_setup_init::
        VM_LOCK

        VM_RESERVE              4

GBVM$scene_setup_init$9c4f4b4a_bf6a_40e8_beec_dea24950192d$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script = .
.globl GBVM$scene_setup_init$9c4f4b4a_bf6a_40e8_beec_dea24950192d$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script
        ; If Color Supported
        VM_GET_UINT8            .LOCAL_TMP0_IS_CGB, __is_CGB
        VM_IF_CONST             .NE, .LOCAL_TMP0_IS_CGB, 1, 1$, 0

GBVM$scene_setup_init$655c2610_d99b_4886_90cc_70a3bc76aaaa$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script = .
.globl GBVM$scene_setup_init$655c2610_d99b_4886_90cc_70a3bc76aaaa$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_titlescreen

        VM_JUMP                 2$
1$:
GBVM$scene_setup_init$9657dbb7_cebb_45df_b45c_53e7a4fd88b7$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script = .
.globl GBVM$scene_setup_init$9657dbb7_cebb_45df_b45c_53e7a4fd88b7$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script
        ; If
        ; -- If Falsy
        VM_IF_CONST             .EQ, VAR_VARIABLE_0, 0, 3$, 0
        VM_JUMP                 4$
3$:
GBVM$scene_setup_init$8eb560c7_2712_4137_a63b_735e1df81912$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script = .
.globl GBVM$scene_setup_init$8eb560c7_2712_4137_a63b_735e1df81912$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_warning

4$:

GBVM_END$scene_setup_init$9657dbb7_cebb_45df_b45c_53e7a4fd88b7 = .
.globl GBVM_END$scene_setup_init$9657dbb7_cebb_45df_b45c_53e7a4fd88b7
2$:

GBVM_END$scene_setup_init$9c4f4b4a_bf6a_40e8_beec_dea24950192d = .
.globl GBVM_END$scene_setup_init$9c4f4b4a_bf6a_40e8_beec_dea24950192d
GBVM$scene_setup_init$autofade$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script = .
.globl GBVM$scene_setup_init$autofade$87939c54_a7d8_4142_b9b6_369d9d6694db$scene$87939c54_a7d8_4142_b9b6_369d9d6694db$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
