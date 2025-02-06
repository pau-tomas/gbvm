.module scene_titlescreen_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_color, _scene_color, ___bank_scene_dmg, _scene_dmg

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_scene_titlescreen_init = 255
.globl ___bank_scene_titlescreen_init

_scene_titlescreen_init::
        VM_LOCK

        VM_RESERVE              4

GBVM$scene_titlescreen_init$e4f10160_f4fc_4e45_aeee_a121da6cc506$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script = .
.globl GBVM$scene_titlescreen_init$e4f10160_f4fc_4e45_aeee_a121da6cc506$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script
        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

GBVM$scene_titlescreen_init$autofade$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script = .
.globl GBVM$scene_titlescreen_init$autofade$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_titlescreen_init$0c44b4a9_a5d6_48b9_a518_1cbf4b5f155d$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script = .
.globl GBVM$scene_titlescreen_init$0c44b4a9_a5d6_48b9_a518_1cbf4b5f155d$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Please choose a\012color mode."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            0
        .asciz "Color Only will\012use VRAM bank 0+1."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            0
        .asciz "DMG will only use\012VRAM bank 0."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$scene_titlescreen_init$10b94aea_21bc_4111_92fb_9619b0e2faff$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script = .
.globl GBVM$scene_titlescreen_init$10b94aea_21bc_4111_92fb_9619b0e2faff$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script
        ; Text Menu
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Color Only Scene\012\002\001DMG Support Scene"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S2_MENUITEM, 0, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$scene_titlescreen_init$ba207233_2efe_4fa2_9b7a_99093faf6b6a$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script = .
.globl GBVM$scene_titlescreen_init$ba207233_2efe_4fa2_9b7a_99093faf6b6a$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script
        ; Switch Variable
        VM_SWITCH               VAR_S2_MENUITEM, 2, 0
        .dw 1, 1$
        .dw 2, 2$

        VM_JUMP                 3$
        ; case 1:
1$:
GBVM$scene_titlescreen_init$bf0e4e71_0cb8_40b7_aa55_771bade306fd$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script = .
.globl GBVM$scene_titlescreen_init$bf0e4e71_0cb8_40b7_aa55_771bade306fd$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    256
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1664
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_color

        VM_JUMP                 3$
        ; case 2:
2$:
GBVM$scene_titlescreen_init$ff54a105_4e4b_450f_878b_65a3d6e94d25$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script = .
.globl GBVM$scene_titlescreen_init$ff54a105_4e4b_450f_878b_65a3d6e94d25$abff2991_b19c_432e_854e_ad4e2d919bfa$scene$abff2991_b19c_432e_854e_ad4e2d919bfa$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    256
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1664
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_dmg

        VM_JUMP                 3$
3$:

GBVM_END$scene_titlescreen_init$ba207233_2efe_4fa2_9b7a_99093faf6b6a = .
.globl GBVM_END$scene_titlescreen_init$ba207233_2efe_4fa2_9b7a_99093faf6b6a
        ; Stop Script
        VM_STOP
