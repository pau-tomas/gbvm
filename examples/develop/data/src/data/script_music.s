.module script_music

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_music = 255
.globl ___bank_script_music

_script_music::
        VM_RESERVE              4

GBVM$script_music$10c3dfaa_5548_48a3_979e_0bdbc0e350d8$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$10c3dfaa_5548_48a3_979e_0bdbc0e350d8$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_S9_LIGHTSSTATE, 0, 1$, 0
GBVM$script_music$9d8482d8_f3e7_40e7_b186_8b73d6d92968$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$9d8482d8_f3e7_40e7_b186_8b73d6d92968$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        ; Variable Set To
        VM_SET_CONST            VAR_S9_LIGHTSSTATE, 1

GBVM$script_music$21fa3fa2_12bb_42a0_9081_36b2f3339629$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$21fa3fa2_12bb_42a0_9081_36b2f3339629$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        VM_LOAD_PALETTE         3, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                13, 0, 31, 5, 12, 30, 14, 6, 15, 4, 5, 10
        .CGB_PAL                31, 2, 2, 12, 20, 30, 25, 1, 6, 4, 5, 10
GBVM$script_music$85132807_3d49_4475_81e6_cea58b3ff155$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$85132807_3d49_4475_81e6_cea58b3ff155$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        VM_LOAD_PALETTE         3, ^/(.PALETTE_SPRITE | .PALETTE_COMMIT)/
        .CGB_PAL                31, 18, 18, 31, 18, 18, 30, 7, 7, 9, 4, 4
        .CGB_PAL                31, 18, 18, 31, 18, 18, 30, 7, 7, 9, 4, 4
GBVM$script_music$398e8db1_0a65_42e6_81b8_ee6b261b6e6f$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$398e8db1_0a65_42e6_81b8_ee6b261b6e6f$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT

GBVM$script_music$59b5cdd6_1b6c_4b47_861b_7bdd831b1e0f$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$59b5cdd6_1b6c_4b47_861b_7bdd831b1e0f$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT

        VM_JUMP                 2$
1$:
GBVM$script_music$035c3876_e167_419e_883e_6dadec6eda4c$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$035c3876_e167_419e_883e_6dadec6eda4c$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        VM_LOAD_PALETTE         3, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                31, 2, 2, 12, 20, 30, 25, 1, 6, 4, 5, 10
        .CGB_PAL                13, 0, 31, 5, 12, 30, 14, 6, 15, 4, 5, 10
GBVM$script_music$8cd9f536_544f_4c63_a62b_e0583562a3c9$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$8cd9f536_544f_4c63_a62b_e0583562a3c9$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        VM_LOAD_PALETTE         3, ^/(.PALETTE_SPRITE | .PALETTE_COMMIT)/
        .CGB_PAL                24, 12, 28, 24, 12, 28, 5, 11, 28, 9, 4, 10
        .CGB_PAL                24, 12, 28, 24, 12, 28, 5, 11, 28, 9, 4, 10
GBVM$script_music$915f20c0_a2e9_4d3a_9bef_76a29ba530dc$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$915f20c0_a2e9_4d3a_9bef_76a29ba530dc$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        ; Variable Set To
        VM_SET_CONST            VAR_S9_LIGHTSSTATE, 0

GBVM$script_music$15f89a05_0efd_407d_9c20_5a0e0aff421a$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$15f89a05_0efd_407d_9c20_5a0e0aff421a$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

GBVM$script_music$734f9b58_1b85_42ab_bd5f_55426178d9f1$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script = .
.globl GBVM$script_music$734f9b58_1b85_42ab_bd5f_55426178d9f1$eb295f50_1350_4042_a8d9_ba79f54eab78$scene$eb295f50_1350_4042_a8d9_ba79f54eab78$script
        ; Actor Set Direction To
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

2$:

GBVM_END$script_music$10c3dfaa_5548_48a3_979e_0bdbc0e350d8 = .
.globl GBVM_END$script_music$10c3dfaa_5548_48a3_979e_0bdbc0e350d8
        ; Stop Script
        VM_STOP
