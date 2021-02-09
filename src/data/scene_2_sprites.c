#pragma bank 255

// Scene: Scene 3
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_5.h"
#include "data/spritesheet_9.h"

const void __at(255) __bank_scene_2_sprites;

const far_ptr_t scene_2_sprites[] = {
  TO_FAR_PTR_T(spritesheet_9),
  TO_FAR_PTR_T(spritesheet_5),
};
