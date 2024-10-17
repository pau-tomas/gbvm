#pragma bank 255
// SpriteSheet: rock

#include "gbs_types.h"
#include "data/sprite_rock_tileset.h"


BANKREF(sprite_rock)

#define SPRITE_5_STATE_DEFAULT 0

const metasprite_t sprite_rock_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_rock_metasprites[] = {
    sprite_rock_metasprite_0
};

const struct animation_t sprite_rock_animations[] = {
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

const UWORD sprite_rock_animations_lookup[] = {
    SPRITE_5_STATE_DEFAULT
};

const struct spritesheet_t sprite_rock = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_rock_metasprites,
    .animations = sprite_rock_animations,
    .animations_lookup = sprite_rock_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_rock_tileset),
    .cgb_tileset = { NULL, NULL }
};
