#pragma bank 255

// Scene: Level 1
// Actors

#include "gbs_types.h"
#include "data/sprite_box.h"
#include "data/script_s0a0_interact.h"
#include "data/sprite_box.h"
#include "data/script_s0a1_interact.h"
#include "data/sprite_box.h"
#include "data/script_s0a2_interact.h"
#include "data/sprite_box.h"
#include "data/script_s0a3_interact.h"
#include "data/sprite_box.h"
#include "data/script_s0a4_interact.h"
#include "data/sprite_box.h"
#include "data/script_s0a5_interact.h"
#include "data/sprite_box.h"
#include "data/script_s0a6_interact.h"

BANKREF(scene_level_1_actors)

const struct actor_t scene_level_1_actors[] = {
    {
        // Box,
        .pos = {
            .x = 64 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a0_interact),
        .reserve_tiles = 0
    },
    {
        // Box,
        .pos = {
            .x = 32 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a1_interact),
        .reserve_tiles = 0
    },
    {
        // Box,
        .pos = {
            .x = 80 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a2_interact),
        .reserve_tiles = 0
    },
    {
        // Box,
        .pos = {
            .x = 80 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a3_interact),
        .reserve_tiles = 0
    },
    {
        // Box,
        .pos = {
            .x = 64 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a4_interact),
        .reserve_tiles = 0
    },
    {
        // Box,
        .pos = {
            .x = 80 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a5_interact),
        .reserve_tiles = 0
    },
    {
        // Box,
        .pos = {
            .x = 96 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a6_interact),
        .reserve_tiles = 0
    }
};
