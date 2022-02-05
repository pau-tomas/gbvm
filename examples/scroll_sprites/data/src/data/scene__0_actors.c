#pragma bank 255

// Scene: Scene 2
// Actors

#include "gbs_types.h"
#include "data/sprite_slon_metaspritesheet.h"
#include "data/script_s1a0_interact.h"
#include "data/sprite_6_colors.h"
#include "data/script_s1a1_update.h"
#include "data/sprite_static.h"
#include "data/sprite_6_colors.h"

BANKREF(scene__0_actors)

const struct actor_t scene__0_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 176 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = -16,
            .bottom = 7,
            .right = 31,
            .top = -32
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_slon_metaspritesheet),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s1a0_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 0 * 16,
            .y = 0 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = -1,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_6_colors),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .script_update = TO_FAR_PTR_T(script_s1a1_update),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 360 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_static),
        .move_speed = 16,
        .anim_tick = 1,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 4,
        .pos = {
            .x = 400 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = -1,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_6_colors),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
