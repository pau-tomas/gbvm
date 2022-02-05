#pragma bank 255

// Scene: Path to Sample Town
// Sprites

#include "gbs_types.h"
#include "data/sprite_signpost.h"
#include "data/sprite_npc006.h"
#include "data/sprite_savepoint.h"

BANKREF(scene_path_to_sample_town_sprites)

const far_ptr_t scene_path_to_sample_town_sprites[] = {
    TO_FAR_PTR_T(sprite_signpost),
    TO_FAR_PTR_T(sprite_npc006),
    TO_FAR_PTR_T(sprite_savepoint)
};
