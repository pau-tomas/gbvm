#pragma bank 255

// Scene: space/Space Battle
// Sprites

#include "gbs_types.h"
#include "data/sprite_ui_weapon.h"
#include "data/sprite_enemy_ship.h"
#include "data/sprite_space_mine.h"
#include "data/sprite_bullet_right.h"
#include "data/sprite_bullet_left.h"

BANKREF(scene_space_battle_sprites)

const far_ptr_t scene_space_battle_sprites[] = {
    TO_FAR_PTR_T(sprite_ui_weapon),
    TO_FAR_PTR_T(sprite_enemy_ship),
    TO_FAR_PTR_T(sprite_space_mine),
    TO_FAR_PTR_T(sprite_bullet_right),
    TO_FAR_PTR_T(sprite_bullet_left)
};
