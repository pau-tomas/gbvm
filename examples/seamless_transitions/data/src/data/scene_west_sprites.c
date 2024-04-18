#pragma bank 255

// Scene: West
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc001.h"

BANKREF(scene_west_sprites)

const far_ptr_t scene_west_sprites[] = {
    TO_FAR_PTR_T(sprite_npc001)
};
