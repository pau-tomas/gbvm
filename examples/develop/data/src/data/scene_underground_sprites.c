#pragma bank 255

// Scene: Underground
// Sprites

#include "gbs_types.h"
#include "data/sprite_signpost.h"
#include "data/sprite_ice.h"
#include "data/sprite_rock.h"
#include "data/sprite_hidden_stairs.h"

BANKREF(scene_underground_sprites)

const far_ptr_t scene_underground_sprites[] = {
    TO_FAR_PTR_T(sprite_signpost),
    TO_FAR_PTR_T(sprite_ice),
    TO_FAR_PTR_T(sprite_rock),
    TO_FAR_PTR_T(sprite_hidden_stairs)
};
