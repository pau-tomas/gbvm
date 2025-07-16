#pragma bank 255

// SpriteSheet: savepoint

#include "gbs_types.h"
#include "data/spritesheet_5_tiles.h"

const void __at(255) __bank_spritesheet_5;

#define SPRITE_5_STATE_DEFAULT 0

const metasprite_t spritesheet_5_metasprite_0[]  = {
    {0, 0, 0, 0}, {0, 8, 2, 0}, {metasprite_end}
};

const metasprite_t spritesheet_5_metasprite_1[]  = {
    {0, 0, 4, 0}, {0, 8, 6, 0}, {metasprite_end}
};

const metasprite_t * const spritesheet_5_metasprites[] = {
    spritesheet_5_metasprite_0,
    spritesheet_5_metasprite_1,
};

const struct animation_t spritesheet_5_animations[] = {
    { .start = 0, .end = 1 }, // bottom
    { .start = 0, .end = 1 }, // right
    { .start = 0, .end = 1 }, // top
    { .start = 0, .end = 1 }, // left
    { .start = 0, .end = 1 }, // bottom
    { .start = 0, .end = 1 }, // right
    { .start = 0, .end = 1 }, // top
    { .start = 0, .end = 1 }, // left      
};

const UWORD spritesheet_5_animations_lookup[] = {
    SPRITE_5_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_5 = {
  .n_metasprites = 2,
  .metasprites = spritesheet_5_metasprites,
  .animations = spritesheet_5_animations,
  .animations_lookup = spritesheet_5_animations_lookup,  
  .bounds = {
    .left = PX_TO_SUBPX(0),
    .bottom = PX_TO_SUBPX(7),
    .right = PX_TO_SUBPX(15),
    .top = PX_TO_SUBPX(-8)
  },
  .tileset = TO_FAR_PTR_T(spritesheet_5_tiles),
  .cgb_tileset = { NULL, NULL },
};
