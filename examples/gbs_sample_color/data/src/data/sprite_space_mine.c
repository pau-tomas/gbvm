#pragma bank 255
// SpriteSheet: space_mine
  
#include "gbs_types.h"
#include "data/tileset_space_mine.h"

BANKREF(sprite_space_mine)

#define SPRITE_26_STATE_DEFAULT 0

const metasprite_t sprite_space_mine_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_space_mine_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_space_mine_metasprites[] = {
    sprite_space_mine_metasprite_0,
    sprite_space_mine_metasprite_1
};

const struct animation_t sprite_space_mine_animations[] = {
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

const UWORD sprite_space_mine_animations_lookup[] = {
    SPRITE_26_STATE_DEFAULT
};

const struct spritesheet_t sprite_space_mine = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_space_mine_metasprites,
    .animations = sprite_space_mine_animations,
    .animations_lookup = sprite_space_mine_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_space_mine),
    .cgb_tileset = { NULL, NULL }
};
