#pragma bank 255

// Scene: Scene 1
// Actors

#include "gbs_types.h"
#include "data/sprite_actor.h"

BANKREF(scene__actors)

const struct actor_t scene__actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 48 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
