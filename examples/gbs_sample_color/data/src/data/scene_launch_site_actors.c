#pragma bank 255

// Scene: Launch Site
// Actors

#include "gbs_types.h"
#include "data/sprite_pod_door.h"
#include "data/sprite_npc005.h"
#include "data/script_s12a1_update.h"
#include "data/script_s12a1_interact.h"
#include "data/sprite_machine.h"
#include "data/script_s12a2_interact.h"
#include "data/sprite_machine.h"
#include "data/script_s12a3_interact.h"
#include "data/sprite_machine.h"
#include "data/script_s12a4_interact.h"
#include "data/sprite_machine.h"
#include "data/script_s12a5_interact.h"

BANKREF(scene_launch_site_actors)

const struct actor_t scene_launch_site_actors[] = {
    {
        // Pod Door,
        .pos = {
            .x = 120 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_pod_door),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Scientist,
        .pos = {
            .x = 64 * 16,
            .y = 96 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_UP,
        .sprite = TO_FAR_PTR_T(sprite_npc005),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s12a1_update),
        .script = TO_FAR_PTR_T(script_s12a1_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 32 * 16,
            .y = 64 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s12a2_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 16 * 16,
            .y = 64 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s12a3_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 48 * 16,
            .y = 80 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s12a4_interact),
        .reserve_tiles = 0
    },
    {
        // Machine,
        .pos = {
            .x = 64 * 16,
            .y = 80 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_machine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s12a5_interact),
        .reserve_tiles = 0
    }
};
