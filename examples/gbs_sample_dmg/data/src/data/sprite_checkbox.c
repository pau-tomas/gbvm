#pragma bank 255
// SpriteSheet: checkbox
  
#include "gbs_types.h"
#include "data/tileset_checkbox.h"

BANKREF(sprite_checkbox)

#define SPRITE_16_STATE_DEFAULT 0

const metasprite_t sprite_checkbox_metasprite_0[]  = {
    { 0, 0, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_checkbox_metasprite_1[]  = {
    {metasprite_end}
};

const metasprite_t sprite_checkbox_metasprite_2[]  = {
    { 0, 0, 0, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_checkbox_metasprites[] = {
    sprite_checkbox_metasprite_0,
    sprite_checkbox_metasprite_1,
    sprite_checkbox_metasprite_2
};

const struct animation_t sprite_checkbox_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 1,
        .end = 1
    }
};

const UWORD sprite_checkbox_animations_lookup[] = {
    SPRITE_16_STATE_DEFAULT
};

const struct spritesheet_t sprite_checkbox = {
    .n_metasprites = 3,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_checkbox_metasprites,
    .animations = sprite_checkbox_animations,
    .animations_lookup = sprite_checkbox_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_checkbox),
    .cgb_tileset = { NULL, NULL }
};
