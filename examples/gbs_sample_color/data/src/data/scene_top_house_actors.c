#pragma bank 255

// Scene: Top House
// Actors

#include "gbs_types.h"
#include "data/sprite_npc002.h"
#include "data/script_s2a0_interact.h"
#include "data/sprite_radio.h"
#include "data/script_s2a1_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s2a2_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s2a3_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s2a4_interact.h"

BANKREF(scene_top_house_actors)

const struct actor_t scene_top_house_actors[] = {
    {
        // Radio Guy,
        .pos = {
            .x = 96 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc002),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a0_interact),
        .reserve_tiles = 0
    },
    {
        // Radio,
        .pos = {
            .x = 120 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_radio),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a1_interact),
        .reserve_tiles = 0
    },
    {
        // Sign Post 3,
        .pos = {
            .x = 120 * 16,
            .y = 88 * 16
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
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a2_interact),
        .reserve_tiles = 0
    },
    {
        // Sign Post 2,
        .pos = {
            .x = 24 * 16,
            .y = 88 * 16
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
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a3_interact),
        .reserve_tiles = 0
    },
    {
        // Sign Post 1,
        .pos = {
            .x = 24 * 16,
            .y = 40 * 16
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
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a4_interact),
        .reserve_tiles = 0
    }
};
