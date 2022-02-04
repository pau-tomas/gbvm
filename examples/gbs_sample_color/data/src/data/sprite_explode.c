#pragma bank 255
// SpriteSheet: explode
  
#include "gbs_types.h"
#include "data/tileset_explode.h"

BANKREF(sprite_explode)

#define SPRITE_3_STATE_DEFAULT 0

const metasprite_t sprite_explode_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_explode_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_explode_metasprite_2[]  = {
    { 0, 8, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_explode_metasprite_3[]  = {
    { 0, 8, 12, 0 }, { 0, -8, 14, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_explode_metasprites[] = {
    sprite_explode_metasprite_0,
    sprite_explode_metasprite_1,
    sprite_explode_metasprite_2,
    sprite_explode_metasprite_3
};

const struct animation_t sprite_explode_animations[] = {
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    }
};

const UWORD sprite_explode_animations_lookup[] = {
    SPRITE_3_STATE_DEFAULT
};

const struct spritesheet_t sprite_explode = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_explode_metasprites,
    .animations = sprite_explode_animations,
    .animations_lookup = sprite_explode_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_explode),
    .cgb_tileset = { NULL, NULL }
};
