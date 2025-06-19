#pragma bank 255

// Scene: ColorOnly
// Actors

#include "gbs_types.h"
#include "data/sprite_elephant_color.h"

BANKREF(scene_color_actors)

const struct actor_t scene_color_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 80 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(-21),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(25),
            .top = PX_TO_SUBPX(-31)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_elephant_color),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
