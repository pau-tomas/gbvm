#pragma bank 255

// Scene: path/Parallax Example
// Actors

#include "gbs_types.h"
#include "data/sprite_signpost.h"
#include "data/actor_sign_post_5_interact.h"
#include "data/sprite_elephant.h"

BANKREF(scene_parallax_example_actors)

const struct actor_t scene_parallax_example_actors[] = {
    {
        // Sign Post,
        .pos = {
            .x = 352 * 16,
            .y = 104 * 16
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
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_sign_post_5_interact),
        .reserve_tiles = 0
    },
    {
        // Elephant,
        .pos = {
            .x = 136 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(-21),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(25),
            .top = PX_TO_SUBPX(-31)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_elephant),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
