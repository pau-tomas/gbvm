#pragma bank 255

// SpriteSheet: fire

#include "gbs_types.h"
#include "data/spritesheet_3_tiles.h"

const void __at(255) __bank_spritesheet_3;

#define SPRITE_3_STATE_DEFAULT 0

const metasprite_t spritesheet_3_metasprite_0[]  = {
    {0, 0, 0, 0}, {0, 8, 2, 0}, {metasprite_end}
};

const metasprite_t spritesheet_3_metasprite_1[]  = {
    {0, 0, 4, 0}, {0, 8, 6, 0}, {metasprite_end}
};

const metasprite_t spritesheet_3_metasprite_2[]  = {
    {0, 0, 8,  0}, {0, 8, 10, 0}, {metasprite_end}
};

const metasprite_t spritesheet_3_metasprite_3[]  = {
    {0, 0, 12, 0}, {0, 8, 14, 0}, {metasprite_end}
};

const metasprite_t * const spritesheet_3_metasprites[] = {
    spritesheet_3_metasprite_0,
    spritesheet_3_metasprite_1,
    spritesheet_3_metasprite_2,
    spritesheet_3_metasprite_3,
};

const struct animation_t spritesheet_3_animations[] = {
    { .start = 0, .end = 1 }, // bottom
    { .start = 0, .end = 1 }, // right
    { .start = 0, .end = 1 }, // top
    { .start = 0, .end = 1 }, // left
    { .start = 0, .end = 1 }, // bottom
    { .start = 0, .end = 1 }, // right
    { .start = 0, .end = 1 }, // top
    { .start = 0, .end = 1 }, // left    
};

const UWORD spritesheet_3_animations_lookup[] = {
    SPRITE_3_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_3 = {
  .n_metasprites = 4,
  .metasprites = spritesheet_3_metasprites,
  .animations = spritesheet_3_animations,
  .animations_lookup = spritesheet_3_animations_lookup,
  .bounds = {
    .left = PX_TO_SUBPX(0),
    .bottom = PX_TO_SUBPX(7),
    .right = PX_TO_SUBPX(15),
    .top = PX_TO_SUBPX(-8)
  },
  .tileset = TO_FAR_PTR_T(spritesheet_3_tiles),
  .cgb_tileset = { NULL, NULL },
};
