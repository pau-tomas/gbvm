#pragma bank 255
// SpriteSheet: duck
  
#include "gbs_types.h"
#include "data/tileset_duck.h"

BANKREF(sprite_duck)

#define SPRITE_3_STATE_DEFAULT 0

const metasprite_t sprite_duck_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_duck_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_duck_metasprites[] = {
    sprite_duck_metasprite_0,
    sprite_duck_metasprite_1
};

const struct animation_t sprite_duck_animations[] = {
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    }
};

const UWORD sprite_duck_animations_lookup[] = {
    SPRITE_3_STATE_DEFAULT
};

const struct spritesheet_t sprite_duck = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_duck_metasprites,
    .animations = sprite_duck_animations,
    .animations_lookup = sprite_duck_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_duck),
    .cgb_tileset = { NULL, NULL }
};
