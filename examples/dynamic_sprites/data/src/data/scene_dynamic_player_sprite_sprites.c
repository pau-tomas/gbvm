#pragma bank 255

// Scene: Dynamic Player Sprite
// Sprites

#include "gbs_types.h"
#include "data/sprite_portal.h"
#include "data/sprite_signpost.h"
#include "data/sprite_player.h"
#include "data/sprite_cat.h"
#include "data/sprite_dog.h"
#include "data/sprite_box.h"

BANKREF(scene_dynamic_player_sprite_sprites)

const far_ptr_t scene_dynamic_player_sprite_sprites[] = {
    TO_FAR_PTR_T(sprite_portal),
    TO_FAR_PTR_T(sprite_signpost),
    TO_FAR_PTR_T(sprite_player),
    TO_FAR_PTR_T(sprite_cat),
    TO_FAR_PTR_T(sprite_dog),
    TO_FAR_PTR_T(sprite_box)
};
