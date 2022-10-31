#pragma bank 255

// Scene: Cave
// Projectiles

#include "gbs_types.h"
#include "data/sprite_bullet.h"

BANKREF(scene_cave_projectiles)

const struct projectile_def_t scene_cave_projectiles[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(sprite_bullet),
        .move_speed = 32,
        .life_time = 60,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 15,
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
        .initial_offset = 128
    }
};
