#pragma bank 255

// Scene: Dynamic Actor Sprite
// Actors

#include "gbs_types.h"
#include "data/sprite_portal.h"
#include "data/script_s4a0_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s4a1_interact.h"
#include "data/sprite_player.h"
#include "data/script_s4a2_interact.h"
#include "data/sprite_cat.h"
#include "data/script_s4a3_interact.h"
#include "data/sprite_dog.h"
#include "data/script_s4a4_interact.h"
#include "data/sprite_box.h"
#include "data/script_s4a5_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s4a6_interact.h"

BANKREF(scene_dynamic_actor_sprite_actors)

const struct actor_t scene_dynamic_actor_sprite_actors[] = {
    {
        // Portal,
        .pos = {
            .x = 72 * 16,
            .y = 16 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_portal),
        .move_speed = 16,
        .anim_tick = 7,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s4a0_interact),
        .reserve_tiles = 0
    },
    {
        // Signpost,
        .pos = {
            .x = 56 * 16,
            .y = 16 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_signpost),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s4a1_interact),
        .reserve_tiles = 0
    },
    {
        // SetActorToPlayer,
        .pos = {
            .x = 32 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_player),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s4a2_interact),
        .reserve_tiles = 0
    },
    {
        // SetActorToCat,
        .pos = {
            .x = 112 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_cat),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s4a3_interact),
        .reserve_tiles = 0
    },
    {
        // SetActorToDog,
        .pos = {
            .x = 112 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_dog),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s4a4_interact),
        .reserve_tiles = 0
    },
    {
        // SetActorToNPC006,
        .pos = {
            .x = 32 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_box),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s4a5_interact),
        .reserve_tiles = 0
    },
    {
        // DynamicActor,
        .pos = {
            .x = 72 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_signpost),
        .move_speed = 16,
        .anim_tick = 3,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s4a6_interact),
        .reserve_tiles = 24
    }
};
