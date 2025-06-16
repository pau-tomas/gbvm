#pragma bank 255

// Scene: space/Space Battle
// Actors

#include "gbs_types.h"
#include "data/sprite_ui_weapon.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_3_update.h"
#include "data/actor_3_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_4_update.h"
#include "data/actor_4_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_5_update.h"
#include "data/actor_5_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_6_update.h"
#include "data/actor_6_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_7_update.h"
#include "data/actor_7_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_8_update.h"
#include "data/actor_8_interact.h"
#include "data/sprite_enemy_ship.h"
#include "data/actor_9_update.h"
#include "data/actor_9_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_10_update.h"
#include "data/actor_10_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_11_update.h"
#include "data/actor_11_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_12_update.h"
#include "data/actor_12_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_13_update.h"
#include "data/actor_13_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_14_update.h"
#include "data/actor_14_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_15_update.h"
#include "data/actor_15_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_16_update.h"
#include "data/actor_16_interact.h"
#include "data/sprite_space_mine.h"
#include "data/actor_17_update.h"
#include "data/actor_17_interact.h"

BANKREF(scene_space_battle_actors)

const struct actor_def_t scene_space_battle_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 0 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_ui_weapon),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = TRUE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Vertical,
        .pos = {
            .x = 288 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_3_update),
        .script = TO_FAR_PTR_T(actor_3_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Vertical,
        .pos = {
            .x = 536 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_4_update),
        .script = TO_FAR_PTR_T(actor_4_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Vertical,
        .pos = {
            .x = 608 * 16,
            .y = 32 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_5_update),
        .script = TO_FAR_PTR_T(actor_5_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Vertical,
        .pos = {
            .x = 688 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_6_update),
        .script = TO_FAR_PTR_T(actor_6_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Vertical,
        .pos = {
            .x = 1824 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_7_update),
        .script = TO_FAR_PTR_T(actor_7_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Vertical,
        .pos = {
            .x = 1744 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_8_update),
        .script = TO_FAR_PTR_T(actor_8_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Vertical,
        .pos = {
            .x = 1832 * 16,
            .y = 120 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_enemy_ship),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_9_update),
        .script = TO_FAR_PTR_T(actor_9_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Diagonal,
        .pos = {
            .x = 888 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_10_update),
        .script = TO_FAR_PTR_T(actor_10_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Top To Bottom,
        .pos = {
            .x = 1040 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_11_update),
        .script = TO_FAR_PTR_T(actor_11_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Bottom To Top,
        .pos = {
            .x = 1320 * 16,
            .y = 120 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_12_update),
        .script = TO_FAR_PTR_T(actor_12_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Top To Bottom,
        .pos = {
            .x = 1120 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_13_update),
        .script = TO_FAR_PTR_T(actor_13_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Top To Bottom,
        .pos = {
            .x = 1200 * 16,
            .y = 24 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_14_update),
        .script = TO_FAR_PTR_T(actor_14_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Bottom To Top,
        .pos = {
            .x = 1400 * 16,
            .y = 120 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_15_update),
        .script = TO_FAR_PTR_T(actor_15_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Bottom To Top,
        .pos = {
            .x = 1480 * 16,
            .y = 120 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_16_update),
        .script = TO_FAR_PTR_T(actor_16_interact),
        .reserve_tiles = 0
    },
    {
        // Enemies/Ship/Mine Diagonal,
        .pos = {
            .x = 1648 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_space_mine),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_17_update),
        .script = TO_FAR_PTR_T(actor_17_interact),
        .reserve_tiles = 0
    }
};
