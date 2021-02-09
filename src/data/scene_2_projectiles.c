#pragma bank 255

// Scene: Scene 3
// Projectiles

#include "gbs_types.h"

#include "data/spritesheet_5.h"
#include "data/spritesheet_9.h"

const void __at(255) __bank_scene_2_projectiles;

const struct projectile_def_t scene_2_projectiles[] = {
  {
    // Projectile 1,
    .bounds = {
      .left = 0,
      .right = 16,
      .top = -16,
      .bottom = 0
    },
    .sprite = TO_FAR_PTR_T(spritesheet_5),
    .move_speed = 60,
    .life_time = 60,
    .anim_tick = 7,
    .frame = 0,
    .frame_start = 0,
    .frame_end = 2,
  },
  {
    // Projectile 2,
    .bounds = {
      .left = 0,
      .right = 16,
      .top = -16,
      .bottom = 0
    },
    .sprite = TO_FAR_PTR_T(spritesheet_9),
    .move_speed = 32,
    .life_time = 120,
    .anim_tick = 7,
    .frame = 0,
    .frame_start = 0,
    .frame_end = 7
  }  
};
