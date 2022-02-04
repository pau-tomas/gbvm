#pragma bank 255
// SpriteSheet: turnip
  
#include "gbs_types.h"
#include "data/tileset_turnip.h"

BANKREF(sprite_turnip)

#define SPRITE_27_STATE_DEFAULT 0

const metasprite_t sprite_turnip_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_turnip_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_turnip_metasprites[] = {
    sprite_turnip_metasprite_0,
    sprite_turnip_metasprite_1
};

const struct animation_t sprite_turnip_animations[] = {
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

const UWORD sprite_turnip_animations_lookup[] = {
    SPRITE_27_STATE_DEFAULT
};

const struct spritesheet_t sprite_turnip = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_turnip_metasprites,
    .animations = sprite_turnip_animations,
    .animations_lookup = sprite_turnip_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_turnip),
    .cgb_tileset = { NULL, NULL }
};
