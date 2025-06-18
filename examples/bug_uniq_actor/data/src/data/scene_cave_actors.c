#pragma bank 255

// Scene: Cave
// Actors

#include "gbs_types.h"
#include "data/sprite_cat.h"
#include "data/actor_cat_interact.h"
#include "data/sprite_signpost.h"
#include "data/actor_savepoint_interact.h"

BANKREF(scene_cave_actors)

const struct actor_t scene_cave_actors[] = {
    {
        // Cat,
        .pos = {
            .x = 104 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_cat),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_cat_interact),
        .reserve_tiles = 4
    },
    {
        // Signpost,
        .pos = {
            .x = 72 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_signpost),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_savepoint_interact),
        .reserve_tiles = 0
    }
};
