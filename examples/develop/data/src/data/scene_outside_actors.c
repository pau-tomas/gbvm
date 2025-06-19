#pragma bank 255

// Scene: Outside
// Actors

#include "gbs_types.h"
#include "data/sprite_npc003.h"
#include "data/script_s7a0_update.h"
#include "data/script_s7a0_interact.h"
#include "data/sprite_torch.h"
#include "data/script_s7a1_update.h"

BANKREF(scene_outside_actors)

const struct actor_t scene_outside_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 168 * 16,
            .y = 80 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_npc003),
        .move_speed = 12,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s7a0_update),
        .script = TO_FAR_PTR_T(script_s7a0_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 24 * 16,
            .y = 64 * 16
        },
        .bounds = {
            .left = PX_TO_SUBPX(0),
            .bottom = PX_TO_SUBPX(7),
            .right = PX_TO_SUBPX(15),
            .top = PX_TO_SUBPX(-8)
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_torch),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s7a1_update),
        .reserve_tiles = 0
    }
};
