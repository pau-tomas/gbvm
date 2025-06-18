#pragma bank 255

// Scene: Scene 1
// Actors

#include "gbs_types.h"
#include "data/spritesheet_0.h"

const void __at(255) __bank_scene_0_actors;

const struct actor_t scene_0_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 72 * 16,
            .y = 16 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_0),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE
    }
};
