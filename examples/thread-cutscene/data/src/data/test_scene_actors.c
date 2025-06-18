#pragma bank 255

// Scene: Scene 1
// Actors

#include "gbs_types.h"
#include "data/sprite_npc003.h"

BANKREF(test_scene_actors)

const struct actor_t test_scene_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 80 * 16,
            .y = 64 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc003),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
