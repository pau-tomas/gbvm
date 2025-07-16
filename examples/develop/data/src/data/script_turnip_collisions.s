.module script_turnip_collisions

.include "vm.i"
.include "data/game_globals.i"

.globl _plat_vel_y, b_wait_frames, _wait_frames, b_camera_shake_frames, _camera_shake_frames

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -10
.SCRIPT_ARG_INDIRECT_1_VARIABLE = -11
.SCRIPT_ARG_2_ACTOR = -12
.LOCAL_ACTOR = -4
.LOCAL_TMP4_CAMERA_SHAKE_ARGS = -4
.LOCAL_TMP1_OTHER_ACTOR = -7
.LOCAL_TMP2_VALUE_TMP = -7
.LOCAL_TMP3_WAIT_ARGS = -7

___bank_script_turnip_collisions = 255
.globl ___bank_script_turnip_collisions

_script_turnip_collisions::
        VM_RESERVE              7

GBVM$script_turnip_collisions$8181c726_3c2f_4bbc_a232_9473d6b92ed4$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$8181c726_3c2f_4bbc_a232_9473d6b92ed4$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; If Actor up Relative To Actor
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_SET                  .LOCAL_TMP1_OTHER_ACTOR, .SCRIPT_ARG_2_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_TMP1_OTHER_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_REF      ^/(.LOCAL_TMP1_OTHER_ACTOR + 2)/
            .R_OPERATOR .LT
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 1$, 1

GBVM$script_turnip_collisions$a89195c2_b1c5_4e47_9ecb_a740b7196762$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$a89195c2_b1c5_4e47_9ecb_a740b7196762$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Variable Set To
        VM_SET_CONST            .LOCAL_TMP2_VALUE_TMP, 1
        VM_SET_INDIRECT         .SCRIPT_ARG_INDIRECT_0_VARIABLE, .LOCAL_TMP2_VALUE_TMP

GBVM$script_turnip_collisions$51154d0c_3818_4efd_a671_f69ff65b9eeb$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$51154d0c_3818_4efd_a671_f69ff65b9eeb$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Variable Decrement By 1
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_STOP

GBVM$script_turnip_collisions$eec9808a_e650_4b34_95b4_b342f138f3a4$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$eec9808a_e650_4b34_95b4_b342f138f3a4$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_2_ACTOR

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

GBVM$script_turnip_collisions$39613c67_c66c_4db9_81cf_b1b42e2362f4$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$39613c67_c66c_4db9_81cf_b1b42e2362f4$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_2_ACTOR

        ; Actor Stop Update Script
        VM_ACTOR_TERMINATE_UPDATE .LOCAL_ACTOR

GBVM$script_turnip_collisions$95283d47_0edd_4785_83d1_6838b09ae805$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$95283d47_0edd_4785_83d1_6838b09ae805$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_2_ACTOR

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_turnip_squash, _sprite_turnip_squash

GBVM$script_turnip_collisions$59091f48_bb65_46fd_b711_ebecbd326403$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$59091f48_bb65_46fd_b711_ebecbd326403$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Player Bounce
        VM_SET_CONST_INT16      _plat_vel_y, -8192

GBVM$script_turnip_collisions$62c64cfe_f09c_46e4_b32e_7df038ae083d$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$62c64cfe_f09c_46e4_b32e_7df038ae083d$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

GBVM$script_turnip_collisions$cec524f1_a5ac_4c1a_bdeb_314b15a508b1$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$cec524f1_a5ac_4c1a_bdeb_314b15a508b1$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Actor Deactivate
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_2_ACTOR
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        VM_JUMP                 2$
1$:
GBVM$script_turnip_collisions$908101d8_4136_4fdb_8f0a_41ec944dea79$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$908101d8_4136_4fdb_8f0a_41ec944dea79$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Actor Set Position
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    13312
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Position Actor
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

GBVM$script_turnip_collisions$bb032da2_cd1f_4d06_922b_6d7c90f29fbf$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script = .
.globl GBVM$script_turnip_collisions$bb032da2_cd1f_4d06_922b_6d7c90f29fbf$f8f027ef_b818_4038_9eda_0ac477facb41$actor$98159e3a_0bfe_44ec_8312_9dcef04c253f$script
        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP4_CAMERA_SHAKE_ARGS, 30
        VM_SET_CONST            ^/(.LOCAL_TMP4_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_RPN
            .R_INT16    5
            .R_REF_SET  ^/(.LOCAL_TMP4_CAMERA_SHAKE_ARGS + 2)/
            .R_STOP
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP4_CAMERA_SHAKE_ARGS

2$:

GBVM_END$script_turnip_collisions$8181c726_3c2f_4bbc_a232_9473d6b92ed4 = .
.globl GBVM_END$script_turnip_collisions$8181c726_3c2f_4bbc_a232_9473d6b92ed4
        VM_RESERVE              -7
        VM_RET_FAR_N            3
