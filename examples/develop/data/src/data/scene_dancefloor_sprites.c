#pragma bank 255

// Scene: Dancefloor
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc007.h"
#include "data/sprite_npc003.h"

BANKREF(scene_dancefloor_sprites)

const far_ptr_t scene_dancefloor_sprites[] = {
    TO_FAR_PTR_T(sprite_npc007),
    TO_FAR_PTR_T(sprite_npc003)
};
