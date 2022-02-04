#pragma bank 255

// Scene: Parallax
// Sprites

#include "gbs_types.h"
#include "data/sprite_elephant.h"

BANKREF(scene_parallax_sprites)

const far_ptr_t scene_parallax_sprites[] = {
    TO_FAR_PTR_T(sprite_elephant)
};
