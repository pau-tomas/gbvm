#pragma bank 255

// Scene: Sample Town
// Actors

#include "gbs_types.h"
#include "data/sprite_rock.h"
#include "data/script_s0a0_interact.h"
#include "data/sprite_duck.h"
#include "data/sprite_npc003.h"
#include "data/script_s0a2_update.h"
#include "data/script_s0a2_interact.h"
#include "data/sprite_cat.h"
#include "data/script_s0a3_interact.h"
#include "data/sprite_npc001.h"
#include "data/script_s0a4_interact.h"
#include "data/sprite_npc001.h"
#include "data/script_s0a5_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s0a6_interact.h"
#include "data/sprite_npc004.h"
#include "data/script_s0a7_interact.h"
#include "data/sprite_npc007.h"

BANKREF(scene_sample_town_actors)

const struct actor_t scene_sample_town_actors[] = {
    {
        // Rock,
        .pos = {
            .x = 200 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_rock),
        .move_speed = 8,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a0_interact),
        .reserve_tiles = 0
    },
    {
        // Duck,
        .pos = {
            .x = 168 * 16,
            .y = 144 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_duck),
        .move_speed = 16,
        .anim_tick = 63,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Pet Owner,
        .pos = {
            .x = 192 * 16,
            .y = 352 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc003),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s0a2_update),
        .script = TO_FAR_PTR_T(script_s0a2_interact),
        .reserve_tiles = 0
    },
    {
        // Cat,
        .pos = {
            .x = 32 * 16,
            .y = 48 * 16
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
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a3_interact),
        .reserve_tiles = 0
    },
    {
        // Angry Guy,
        .pos = {
            .x = 168 * 16,
            .y = 192 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_npc001),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a4_interact),
        .reserve_tiles = 0
    },
    {
        // Oblivious Guy,
        .pos = {
            .x = 168 * 16,
            .y = 128 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc001),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a5_interact),
        .reserve_tiles = 0
    },
    {
        // Sign Post,
        .pos = {
            .x = 224 * 16,
            .y = 184 * 16
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
        .script = TO_FAR_PTR_T(script_s0a6_interact),
        .reserve_tiles = 0
    },
    {
        // Hider,
        .pos = {
            .x = 288 * 16,
            .y = 192 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc004),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s0a7_interact),
        .reserve_tiles = 0
    },
    {
        // Florist,
        .pos = {
            .x = 376 * 16,
            .y = 376 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc007),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
