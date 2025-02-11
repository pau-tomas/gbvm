#pragma bank 255

// Scene: town/Music House
// Sprites

#include "gbs_types.h"
#include "data/sprite_keyboard.h"
#include "data/sprite_drumkit.h"
#include "data/sprite_npc008.h"
#include "data/sprite_machine.h"
#include "data/sprite_signpost.h"

BANKREF(scene_17_sprites)

const far_ptr_t scene_17_sprites[] = {
    TO_FAR_PTR_T(sprite_keyboard),
    TO_FAR_PTR_T(sprite_drumkit),
    TO_FAR_PTR_T(sprite_npc008),
    TO_FAR_PTR_T(sprite_machine),
    TO_FAR_PTR_T(sprite_signpost)
};
