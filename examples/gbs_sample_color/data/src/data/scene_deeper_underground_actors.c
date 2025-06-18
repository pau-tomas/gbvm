#pragma bank 255

// Scene: caves/Deeper Underground
// Actors

#include "gbs_types.h"
#include "data/sprite_chest.h"
#include "data/actor_chest_interact.h"

BANKREF(scene_deeper_underground_actors)

const struct actor_t scene_deeper_underground_actors[] = {
    {
        // Chest,
        .pos = {
            .x = 216 * 16,
            .y = 120 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_chest),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_chest_interact),
        .reserve_tiles = 0
    }
};
