#pragma bank 255

// Scene: Space Battle
// Sprites

#include "gbs_types.h"
#include "data/sprite_ui_weapon.h"
#include "data/sprite_bullet_right.h"
#include "data/sprite_bullet_left.h"

BANKREF(scene_space_battle_sprites)

const far_ptr_t scene_space_battle_sprites[] = {
    TO_FAR_PTR_T(sprite_ui_weapon),
    TO_FAR_PTR_T(sprite_bullet_right),
    TO_FAR_PTR_T(sprite_bullet_left)
};
