#pragma bank 255

// Scene: Scene 3

#include "gbs_types.h"
#include "data/background_1.h"
#include "data/spritesheet_0.h"
#include "data/scene_2_collisions.h"
#include "data/scene_2_colors.h"
#include "data/palette_2.h"
#include "data/palette_0.h"
#include "data/scene_2_actors.h"
#include "data/scene_2_triggers.h"
#include "data/scene_2_projectiles.h"
#include "data/scene_2_sprites.h"
#include "data/script_s2_init.h"
#include "data/script_s2_p_hit1.h"

const void __at(255) __bank_scene_2;

const struct scene_t scene_2 = {
  .width = 32,
  .height = 32,
  .type = SCENE_TYPE_ADVENTURE,
  .background = TO_FAR_PTR_T(background_1),
  .collisions = TO_FAR_PTR_T(scene_2_collisions),
  .colors = TO_FAR_PTR_T(scene_2_colors),
  .palette = TO_FAR_PTR_T(palette_2),
  .sprite_palette = TO_FAR_PTR_T(palette_0),
  .player_sprite = TO_FAR_PTR_T(spritesheet_0),
  .n_actors = 1,
  .n_triggers = 3,
  .n_projectiles = 2,
  .n_sprites = 2,
  .actors = TO_FAR_PTR_T(scene_2_actors),
  .triggers = TO_FAR_PTR_T(scene_2_triggers),
  .projectiles = TO_FAR_PTR_T(scene_2_projectiles),
  .sprites = TO_FAR_PTR_T(scene_2_sprites),
  .script_init = TO_FAR_PTR_T(script_s2_init),
  .script_p_hit1 = TO_FAR_PTR_T(script_s2_p_hit1)
};
