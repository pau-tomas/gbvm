#pragma bank 255

// Scene: Platform
// Sprites

#include "gbs_types.h"
#include "data/sprite_signpost.h"
#include "data/sprite_savepoint.h"

BANKREF(scene_platform_sprites)

const far_ptr_t scene_platform_sprites[] = {
    TO_FAR_PTR_T(sprite_signpost),
    TO_FAR_PTR_T(sprite_savepoint)
};
