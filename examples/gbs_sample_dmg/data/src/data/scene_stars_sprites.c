#pragma bank 255

// Scene: Stars
// Sprites

#include "gbs_types.h"
#include "data/sprite_dog.h"

BANKREF(scene_stars_sprites)

const far_ptr_t scene_stars_sprites[] = {
    TO_FAR_PTR_T(sprite_dog)
};
