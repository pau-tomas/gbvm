#pragma bank 255

// Scene: space/Deep Space
// Sprites

#include "gbs_types.h"
#include "data/sprite_dog.h"
#include "data/sprite_portal.h"
#include "data/sprite_savepoint.h"

BANKREF(scene_deep_space_sprites)

const far_ptr_t scene_deep_space_sprites[] = {
    TO_FAR_PTR_T(sprite_dog),
    TO_FAR_PTR_T(sprite_portal),
    TO_FAR_PTR_T(sprite_savepoint)
};
