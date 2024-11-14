#pragma bank 255

// Scene: Outside
// Sprites

#include "gbs_types.h"
#include "data/sprite_rock.h"

BANKREF(scene_outside_sprites)

const far_ptr_t scene_outside_sprites[] = {
    TO_FAR_PTR_T(sprite_rock)
};
