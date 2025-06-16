#pragma bank 255

// Scene: Scene 1
// Actors

#include "gbs_types.h"
#include "data/sprite_radio.h"
#include "data/actor_0_interact.h"

BANKREF(scene_scene_1_actors)

const struct actor_def_t scene_scene_1_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 72 * 16,
            .y = 64 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_radio),
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
