#pragma bank 255

// Scene: Start
// Actors

#include "gbs_types.h"
#include "data/sprite_box.h"
#include "data/actor_0_interact.h"

BANKREF(scene_start_actors)

const struct actor_def_t scene_start_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 32 * 16,
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
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_0_interact),
        .reserve_tiles = 0
    }
};
