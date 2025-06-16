#pragma bank 255

// Scene: West
// Actors

#include "gbs_types.h"
#include "data/sprite_npc001.h"

BANKREF(scene_west_actors)

const struct actor_def_t scene_west_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 40 * 16,
            .y = 72 * 16
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
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
