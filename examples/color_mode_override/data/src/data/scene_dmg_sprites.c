#pragma bank 255

// Scene: DMGSupport
// Sprites

#include "gbs_types.h"
#include "data/sprite_elephant.h"

BANKREF(scene_dmg_sprites)

const far_ptr_t scene_dmg_sprites[] = {
    TO_FAR_PTR_T(sprite_elephant)
};
