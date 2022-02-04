#pragma bank 255

// Scene: Alt Player Sprite
// Sprites

#include "gbs_types.h"
#include "data/sprite_portal.h"
#include "data/sprite_signpost.h"

BANKREF(scene_alt_player_sprite_sprites)

const far_ptr_t scene_alt_player_sprite_sprites[] = {
    TO_FAR_PTR_T(sprite_portal),
    TO_FAR_PTR_T(sprite_signpost)
};
