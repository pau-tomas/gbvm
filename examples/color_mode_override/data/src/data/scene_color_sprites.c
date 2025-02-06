#pragma bank 255

// Scene: ColorOnly
// Sprites

#include "gbs_types.h"
#include "data/sprite_elephant_color.h"

BANKREF(scene_color_sprites)

const far_ptr_t scene_color_sprites[] = {
    TO_FAR_PTR_T(sprite_elephant_color)
};
