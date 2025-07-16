#pragma bank 255

// Scene: Scene 5
// Actors

#include "gbs_types.h"
#include "data/spritesheet_9.h"
#include "data/spritesheet_10.h"
#include "data/spritesheet_11.h"

const void __at(255) __bank_scene_5_actors;

#define elephant_x 180
#define elephant_y 104

const struct actor_t scene_5_actors[] = {
  {
    // Actor 1,
    .pos = {
      .x = (elephant_x + 8 + 3) * 16,
      .y = (elephant_y - 40 + 2) * 16,
    },
    .dir = DIR_LEFT,
    .sprite = TO_FAR_PTR_T(spritesheet_9),
    .bounds = {
      .left = PX_TO_SUBPX(0),
      .bottom = PX_TO_SUBPX(7),
      .right = PX_TO_SUBPX(15),
      .top = PX_TO_SUBPX(-8)
    },  
    .move_speed = 1,
    .anim_tick = 7,
    .frame = 0,
    .frame_start = 0,
    .frame_end = 0,
    .pinned = FALSE,
    .collision_group = COLLISION_GROUP_1,
    .collision_enabled = TRUE
  },
  {
    // Actor 2,
    .pos = {
      .x = (elephant_x + 32 + 2) * 16,
      .y = (elephant_y - 40 + 2) * 16,
    },
    .dir = DIR_RIGHT,
    .sprite = TO_FAR_PTR_T(spritesheet_9),
    .bounds = {
      .left = PX_TO_SUBPX(0),
      .bottom = PX_TO_SUBPX(7),
      .right = PX_TO_SUBPX(15),
      .top = PX_TO_SUBPX(-8)
    },  
    .move_speed = 1,
    .anim_tick = 7,
    .frame = 0,
    .frame_start = 0,
    .frame_end = 0,
    .pinned = FALSE,
    .collision_group = COLLISION_GROUP_1,
    .collision_enabled = TRUE
  },
  {
    // elephant,
    .pos = {
      .x = elephant_x * 16,
      .y = elephant_y * 16,
    },
    .dir = DIR_DOWN,
    .sprite = TO_FAR_PTR_T(spritesheet_10),
    .bounds = {
      .left = PX_TO_SUBPX(0),
      .right = PX_TO_SUBPX(55),
      .top = PX_TO_SUBPX(-32),
      .bottom = PX_TO_SUBPX(7)
    },
    .move_speed = 1,
    .anim_tick = 15,
    .frame = 0,
    .frame_start = 0,
    .frame_end = 7,
    .pinned = FALSE,
    .collision_group = COLLISION_GROUP_1,
    .collision_enabled = TRUE
  },
  {
    // coin,
    .pos = {
      .x = (elephant_x - 16) * 16,
      .y = (elephant_y - 64) * 16,
    },
    .dir = DIR_DOWN,
    .sprite = TO_FAR_PTR_T(spritesheet_11),
    .bounds = {
      .left = PX_TO_SUBPX(0),
      .bottom = PX_TO_SUBPX(7),
      .right = PX_TO_SUBPX(15),
      .top = PX_TO_SUBPX(-8)
    },   
    .move_speed = 1,
    .anim_tick = 15,
    .frame = 0,
    .frame_start = 0,
    .frame_end = 2,
    .pinned = FALSE,
    .collision_group = COLLISION_GROUP_1,
    .collision_enabled = TRUE
  }   
};
