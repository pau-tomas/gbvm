#pragma bank 255

// Scene: space/Space Battle
// Projectiles

#include "gbs_types.h"
#include "data/sprite_bullet_right.h"
#include "data/sprite_bullet_left.h"

BANKREF(scene_space_battle_projectiles)

const struct projectile_def_t scene_space_battle_projectiles[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(sprite_bullet_right),
        .move_speed = 48,
        .life_time = 72,
        .collision_group = COLLISION_GROUP_1,
        .collision_mask = COLLISION_GROUP_1,
        .strong = false,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 7,
        .anim_noloop = false,
        .animations = {
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            }
        },
        .initial_offset = 0
    },
    {
        // Projectile 1,
        .sprite = TO_FAR_PTR_T(sprite_bullet_left),
        .move_speed = 16,
        .life_time = 60,
        .collision_group = COLLISION_GROUP_1,
        .collision_mask = COLLISION_GROUP_PLAYER,
        .strong = false,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 7,
        .anim_noloop = false,
        .animations = {
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            }
        },
        .initial_offset = 0
    }
};
