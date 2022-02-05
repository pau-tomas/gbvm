#pragma bank 255
// SpriteSheet: torch
  
#include "gbs_types.h"
#include "data/tileset_torch.h"

BANKREF(sprite_torch)

#define SPRITE_3_STATE_DEFAULT 0
#define SPRITE_3_STATE_OPEN 0

const metasprite_t sprite_torch_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_torch_metasprites[] = {
    sprite_torch_metasprite_0
};

const struct animation_t sprite_torch_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    }
};

const UWORD sprite_torch_animations_lookup[] = {
    SPRITE_3_STATE_DEFAULT
};

const struct spritesheet_t sprite_torch = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_torch_metasprites,
    .animations = sprite_torch_animations,
    .animations_lookup = sprite_torch_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_torch),
    .cgb_tileset = { NULL, NULL }
};
