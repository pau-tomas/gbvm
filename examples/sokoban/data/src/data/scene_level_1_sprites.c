#pragma bank 255

// Scene: Level 1
// Sprites

#include "gbs_types.h"
#include "data/sprite_box.h"

BANKREF(scene_level_1_sprites)

const far_ptr_t scene_level_1_sprites[] = {
    TO_FAR_PTR_T(sprite_box)
};
