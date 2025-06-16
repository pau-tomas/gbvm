#pragma bank 255

// Scene: Dynamic Player Sprite
// Actors

#include "gbs_types.h"
#include "data/sprite_portal.h"
#include "data/script_s2a0_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s2a1_interact.h"
#include "data/sprite_player.h"
#include "data/script_s2a2_interact.h"
#include "data/sprite_cat.h"
#include "data/script_s2a3_interact.h"
#include "data/sprite_dog.h"
#include "data/script_s2a4_interact.h"
#include "data/sprite_box.h"
#include "data/script_s2a5_interact.h"

BANKREF(scene_dynamic_player_sprite_actors)

const struct actor_def_t scene_dynamic_player_sprite_actors[] = {
    {
        // Portal,
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
        .sprite = TO_FAR_PTR_T(sprite_portal),
        .move_speed = 16,
        .anim_tick = 7,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a0_interact),
        .reserve_tiles = 0
    },
    {
        // Signpost,
        .pos = {
            .x = 56 * 16,
            .y = 16 * 16
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
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a1_interact),
        .reserve_tiles = 0
    },
    {
        // SetPlayerToPlayer,
        .pos = {
            .x = 32 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_player),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a2_interact),
        .reserve_tiles = 0
    },
    {
        // SetPlayerToCat,
        .pos = {
            .x = 112 * 16,
            .y = 72 * 16
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
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a3_interact),
        .reserve_tiles = 0
    },
    {
        // SetPlayerToDog,
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
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s2a4_interact),
        .reserve_tiles = 0
    },
    {
        // SetPlayerToNPC006,
        .pos = {
            .x = 32 * 16,
            .y = 112 * 16
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
        .script = TO_FAR_PTR_T(script_s2a5_interact),
        .reserve_tiles = 0
    }
};
