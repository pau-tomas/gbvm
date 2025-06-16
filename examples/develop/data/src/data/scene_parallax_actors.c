#pragma bank 255

// Scene: Parallax
// Actors

#include "gbs_types.h"
#include "data/sprite_elephant.h"

BANKREF(scene_parallax_actors)

const struct actor_def_t scene_parallax_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 112 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = -22,
            .bottom = 7,
            .right = 33,
            .top = -31
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_elephant),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
