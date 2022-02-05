#pragma bank 255

// Scene: Cave
// Sprites

#include "gbs_types.h"
#include "data/sprite_torch.h"
#include "data/sprite_fire.h"
#include "data/sprite_sage.h"
#include "data/sprite_savepoint.h"
#include "data/sprite_portal.h"

BANKREF(scene_cave_sprites)

const far_ptr_t scene_cave_sprites[] = {
    TO_FAR_PTR_T(sprite_torch),
    TO_FAR_PTR_T(sprite_fire),
    TO_FAR_PTR_T(sprite_sage),
    TO_FAR_PTR_T(sprite_savepoint),
    TO_FAR_PTR_T(sprite_portal)
};
