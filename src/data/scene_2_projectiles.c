#pragma bank 255

// Scene: Scene 3
// Projectiles

#include "gbs_types.h"

const struct projectile_t scene_2_projectiles[] = {
  {
    // Projectile 1,
    .bounds = {
      .left = 0,
      .right = 16,
      .top = -16,
      .bottom = 0
    },
    .move_speed = 8,
    .anim_tick = 7
  },
  {
    // Projectile 2,
    .bounds = {
      .left = 0,
      .right = 16,
      .top = -16,
      .bottom = 0
    },
    .move_speed = 8,
    .anim_tick = 7
  }  
};
