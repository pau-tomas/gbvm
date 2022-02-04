#pragma bank 255
// SpriteSheet: enemy_ship
  
#include "gbs_types.h"
#include "data/tileset_enemy_ship.h"

BANKREF(sprite_enemy_ship)

#define SPRITE_25_STATE_DEFAULT 0

const metasprite_t sprite_enemy_ship_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_enemy_ship_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_enemy_ship_metasprites[] = {
    sprite_enemy_ship_metasprite_0,
    sprite_enemy_ship_metasprite_1
};

const struct animation_t sprite_enemy_ship_animations[] = {
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

const UWORD sprite_enemy_ship_animations_lookup[] = {
    SPRITE_25_STATE_DEFAULT
};

const struct spritesheet_t sprite_enemy_ship = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_enemy_ship_metasprites,
    .animations = sprite_enemy_ship_animations,
    .animations_lookup = sprite_enemy_ship_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_enemy_ship),
    .cgb_tileset = { NULL, NULL }
};
