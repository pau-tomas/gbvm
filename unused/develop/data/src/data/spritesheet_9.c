#pragma bank 255

// SpriteSheet: npc003

#include "gbs_types.h"
#include "data/spritesheet_9_tiles.h"

const void __at(255) __bank_spritesheet_9;

#define SPRITE_9_STATE_DEFAULT 0

const metasprite_t spritesheet_9_metasprite_0[]  = {
    {0, 0, 0, 0}, {0, 8, 2, 0}, {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_1[]  = {
    {0, 0, 4, 0}, {0, 8, 6, 0}, {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_2[]  = {
    {0, 0, 8,  0}, {0, 8, 10, 0}, {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_3[]  = {
    {0, 0, 12, 0}, {0, 8, 14, 0}, {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_4[]  = {
    {0, 0, 16, 0}, {0, 8, 18, 0}, {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_5[]  = {
    {0, 0, 20, 0}, {0, 8, 22, 0}, {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_6[]  = {
    {0, 0, 18, 32}, {0, 8, 16, 32}, {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_7[]  = {
    {0, 0, 22, 32}, {0, 8, 20, 32}, {metasprite_end}
};

const metasprite_t * const spritesheet_9_metasprites[] = {
    spritesheet_9_metasprite_0,
    spritesheet_9_metasprite_1,
    spritesheet_9_metasprite_2,
    spritesheet_9_metasprite_3,
    spritesheet_9_metasprite_4,
    spritesheet_9_metasprite_5,
    spritesheet_9_metasprite_6,
    spritesheet_9_metasprite_7
};

const struct animation_t spritesheet_9_animations[] = {
    // Idle
    { .start = 0, .end = 0 }, // bottom
    { .start = 4, .end = 4 }, // right
    { .start = 2, .end = 2 }, // top
    { .start = 6, .end = 6 }, // left
    // Moving
    { .start = 0, .end = 1 }, // bottom
    { .start = 4, .end = 5 }, // right
    { .start = 2, .end = 3 }, // top
    { .start = 6, .end = 7 }, // left    
};

const UWORD spritesheet_9_animations_lookup[] = {
    SPRITE_9_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_9 = {
  .n_metasprites = 6,
  .metasprites = spritesheet_9_metasprites,
  .animations = spritesheet_9_animations,
  .animations_lookup = spritesheet_9_animations_lookup,    
  .bounds = {
    .left = PX_TO_SUBPX(0),
    .bottom = PX_TO_SUBPX(7),
    .right = PX_TO_SUBPX(15),
    .top = PX_TO_SUBPX(-8)
  },    
  .tileset = TO_FAR_PTR_T(spritesheet_9_tiles),
  .cgb_tileset = { NULL, NULL },
};
