#pragma bank 255

// Scene: Cave
// Sprites

#include "gbs_types.h"
#include "data/sprite_signpost.h"
#include "data/sprite_bullet.h"

BANKREF(scene_cave_sprites)

const far_ptr_t scene_cave_sprites[] = {
    TO_FAR_PTR_T(sprite_signpost),
    TO_FAR_PTR_T(sprite_bullet)
};
