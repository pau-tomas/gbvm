#pragma bank 255

// Scene: Start
// Sprites

#include "gbs_types.h"
#include "data/sprite_portal.h"
#include "data/sprite_signpost.h"

BANKREF(scene_start_sprites)

const far_ptr_t scene_start_sprites[] = {
    TO_FAR_PTR_T(sprite_portal),
    TO_FAR_PTR_T(sprite_signpost)
};
