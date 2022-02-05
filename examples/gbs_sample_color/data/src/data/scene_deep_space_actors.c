#pragma bank 255

// Scene: Deep Space
// Actors

#include "gbs_types.h"
#include "data/sprite_dog.h"
#include "data/script_s11a0_interact.h"
#include "data/sprite_portal.h"
#include "data/sprite_savepoint.h"
#include "data/script_s11a2_interact.h"

BANKREF(scene_deep_space_actors)

const struct actor_t scene_deep_space_actors[] = {
    {
        // Space Dog,
        .pos = {
            .x = 112 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_dog),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s11a0_interact),
        .reserve_tiles = 0
    },
    {
        // Portal,
        .pos = {
            .x = 112 * 16,
            .y = 80 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_portal),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Save Point,
        .pos = {
            .x = 152 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_savepoint),
        .move_speed = 16,
        .anim_tick = 31,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s11a2_interact),
        .reserve_tiles = 0
    }
};
