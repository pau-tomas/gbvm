#pragma bank 255

// Scene: Menu Page 2
// Actors

#include "gbs_types.h"
#include "data/sprite_checkbox.h"
#include "data/sprite_checkbox.h"
#include "data/sprite_checkbox.h"
#include "data/sprite_checkbox.h"
#include "data/sprite_checkbox.h"

BANKREF(scene_menu_page_2_actors)

const struct actor_t scene_menu_page_2_actors[] = {
    {
        // Quest7,
        .pos = {
            .x = 16 * 16,
            .y = 32 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_checkbox),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Quest8,
        .pos = {
            .x = 16 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_checkbox),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Quest9,
        .pos = {
            .x = 16 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_checkbox),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Quest10,
        .pos = {
            .x = 16 * 16,
            .y = 88 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_checkbox),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Quest11,
        .pos = {
            .x = 16 * 16,
            .y = 104 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_checkbox),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
