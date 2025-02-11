.module actor_21_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_21_interact = 255
.globl ___bank_actor_21_interact

_actor_21_interact::
        VM_LOCK

        ; Sound Play
        VM_SFX_PLAY             ___bank_sound_gbstudio_sfx_sav_00, _sound_gbstudio_sfx_sav_00, ___mute_mask_sound_gbstudio_sfx_sav_00, .SFX_PRIORITY_NORMAL

        ; Stop Script
        VM_STOP
