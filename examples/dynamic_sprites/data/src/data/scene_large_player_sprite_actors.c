#pragma bank 255

// Scene: Large Player Sprite
// Actors

#include "gbs_types.h"
#include "data/sprite_portal.h"
#include "data/script_s3a0_interact.h"
#include "data/sprite_signpost.h"
#include "data/script_s3a1_interact.h"

BANKREF(scene_large_player_sprite_actors)

const struct actor_t scene_large_player_sprite_actors[] = {
    {
        // Portal,
        .pos = {
            .x = 64 * 16,
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
        .script = TO_FAR_PTR_T(script_s3a0_interact),
        .reserve_tiles = 0
    },
    {
        // Signpost,
        .pos = {
            .x = 48 * 16,
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
        .script = TO_FAR_PTR_T(script_s3a1_interact),
        .reserve_tiles = 0
    }
};
