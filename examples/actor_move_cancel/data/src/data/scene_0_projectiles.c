#pragma bank 255

// Scene: Scene 1
// Projectiles

#include "gbs_types.h"
#include "data/spritesheet_0.h"

BANKREF(scene_0_projectiles)

const struct projectile_def_t scene_0_projectiles[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(spritesheet_0),
        .move_speed = 64,
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
                .start = 1,
                .end = 1
            },
            {
                .start = 2,
                .end = 2
            },
            {
                .start = 3,
                .end = 3
            }
        },
        .initial_offset = 0
    }
};
