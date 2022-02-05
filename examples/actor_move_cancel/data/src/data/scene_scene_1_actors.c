#pragma bank 255

// Scene: Scene 1
// Actors

#include "gbs_types.h"
#include "data/sprite_actor.h"
#include "data/script_s0a0_update.h"
#include "data/script_s0a0_interact.h"
#include "data/sprite_actor.h"
#include "data/script_s0a1_update.h"
#include "data/script_s0a1_interact.h"
#include "data/sprite_actor.h"
#include "data/script_s0a2_update.h"
#include "data/script_s0a2_interact.h"

BANKREF(scene_scene_1_actors)

const struct actor_t scene_scene_1_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 0 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s0a0_update),
        .script = TO_FAR_PTR_T(script_s0a0_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 144 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s0a1_update),
        .script = TO_FAR_PTR_T(script_s0a1_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 72 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s0a2_update),
        .script = TO_FAR_PTR_T(script_s0a2_interact),
        .reserve_tiles = 0
    }
};
