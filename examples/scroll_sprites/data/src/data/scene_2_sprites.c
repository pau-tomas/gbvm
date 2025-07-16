#pragma bank 255

// Scene: Scene 2
// Sprites

#include "gbs_types.h"
#include "data/sprite_slon_metaspritesheet.h"
#include "data/sprite_6_colors.h"
#include "data/sprite_static.h"

BANKREF(scene_2_sprites)

const far_ptr_t scene_2_sprites[] = {
    TO_FAR_PTR_T(sprite_slon_metaspritesheet),
    TO_FAR_PTR_T(sprite_6_colors),
    TO_FAR_PTR_T(sprite_static)
};
