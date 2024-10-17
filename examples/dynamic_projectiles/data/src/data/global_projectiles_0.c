#pragma bank 255

// Global Projectiles: global_projectiles_0

#include "gbs_types.h"
#include "data/sprite_bullet_left.h"
#include "data/sprite_dog.h"

BANKREF(global_projectiles_0)

const struct projectile_def_t global_projectiles_0[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(sprite_bullet_left),
        .move_speed = 32,
        .life_time = 60,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .strong = false,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 15,
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
        .sprite = TO_FAR_PTR_T(sprite_dog),
        .move_speed = 32,
        .life_time = 60,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .strong = true,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 15,
        .anim_noloop = false,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 0
    }
};
