#pragma bank 255

// Scene: House
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc002.h"
#include "data/sprite_radio.h"
#include "data/sprite_signpost.h"

BANKREF(scene_house_sprites)

const far_ptr_t scene_house_sprites[] = {
    TO_FAR_PTR_T(sprite_npc002),
    TO_FAR_PTR_T(sprite_radio),
    TO_FAR_PTR_T(sprite_signpost)
};
