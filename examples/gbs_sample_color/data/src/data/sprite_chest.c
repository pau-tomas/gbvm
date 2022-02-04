#pragma bank 255
// SpriteSheet: chest
  
#include "gbs_types.h"
#include "data/tileset_chest.h"

BANKREF(sprite_chest)

#define SPRITE_34_STATE_DEFAULT 0

const metasprite_t sprite_chest_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 0, 32 },
    {metasprite_end}
};

const metasprite_t sprite_chest_metasprite_1[]  = {
    { 0, 8, 2, 0 }, { 0, -8, 2, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_chest_metasprites[] = {
    sprite_chest_metasprite_0,
    sprite_chest_metasprite_1
};

const struct animation_t sprite_chest_animations[] = {
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

const UWORD sprite_chest_animations_lookup[] = {
    SPRITE_34_STATE_DEFAULT
};

const struct spritesheet_t sprite_chest = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_chest_metasprites,
    .animations = sprite_chest_animations,
    .animations_lookup = sprite_chest_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_chest),
    .cgb_tileset = { NULL, NULL }
};
