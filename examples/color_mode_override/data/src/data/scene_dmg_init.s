.module scene_dmg_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255


___bank_scene_dmg_init = 255
.globl ___bank_scene_dmg_init

_scene_dmg_init::
        VM_LOCK

GBVM$scene_dmg_init$16e0a979_5a23_473c_a3c5_6c5369081a2a$574628f6_119a_4e20_bfd6_202a1e98706f$scene$574628f6_119a_4e20_bfd6_202a1e98706f$script = .
.globl GBVM$scene_dmg_init$16e0a979_5a23_473c_a3c5_6c5369081a2a$574628f6_119a_4e20_bfd6_202a1e98706f$scene$574628f6_119a_4e20_bfd6_202a1e98706f$script
        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input, _script_input
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

GBVM_END$scene_dmg_init$16e0a979_5a23_473c_a3c5_6c5369081a2a = .
.globl GBVM_END$scene_dmg_init$16e0a979_5a23_473c_a3c5_6c5369081a2a
GBVM$scene_dmg_init$autofade$574628f6_119a_4e20_bfd6_202a1e98706f$scene$574628f6_119a_4e20_bfd6_202a1e98706f$script = .
.globl GBVM$scene_dmg_init$autofade$574628f6_119a_4e20_bfd6_202a1e98706f$scene$574628f6_119a_4e20_bfd6_202a1e98706f$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
