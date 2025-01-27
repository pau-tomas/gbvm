#pragma bank 255
// SpriteSheet: npc_gardener

#include "gbs_types.h"
#include "data/sprite_npc_gardener_tileset.h"


BANKREF(sprite_npc_gardener)

#define SPRITE_15_STATE_DEFAULT 0
#define SPRITE_15_STATE_EXPLODE 0
#define SPRITE_15_STATE_OPEN 0

const metasprite_t sprite_npc_gardener_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { -16, 0, 2, 0 }, { 16, -8, 4, 0 }, { -16, 0, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_npc_gardener_metasprite_1[]  = {
    { 0, 0, 0, 32 }, { -16, 0, 2, 32 }, { 16, 8, 4, 32 }, { -16, 0, 6, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_npc_gardener_metasprites[] = {
    sprite_npc_gardener_metasprite_0,
    sprite_npc_gardener_metasprite_1
};

const struct animation_t sprite_npc_gardener_animations[] = {
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
        .start = 1,
        .end = 1
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
        .start = 1,
        .end = 1
    }
};

const UWORD sprite_npc_gardener_animations_lookup[] = {
    SPRITE_15_STATE_DEFAULT
};

const struct spritesheet_t sprite_npc_gardener = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_npc_gardener_metasprites,
    .animations = sprite_npc_gardener_animations,
    .animations_lookup = sprite_npc_gardener_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_npc_gardener_tileset),
    .cgb_tileset = { NULL, NULL }
};
