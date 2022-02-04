#pragma bank 255
// SpriteSheet: pod_door
  
#include "gbs_types.h"
#include "data/tileset_pod_door.h"

BANKREF(sprite_pod_door)

#define SPRITE_31_STATE_DEFAULT 0

const metasprite_t sprite_pod_door_metasprite_0[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_pod_door_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 0, 32 },
    {metasprite_end}
};

const metasprite_t sprite_pod_door_metasprite_2[]  = {
    { 0, 8, 2, 0 }, { 0, -8, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_pod_door_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { 0, 8, 0, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_pod_door_metasprites[] = {
    sprite_pod_door_metasprite_0,
    sprite_pod_door_metasprite_1,
    sprite_pod_door_metasprite_2,
    sprite_pod_door_metasprite_3
};

const struct animation_t sprite_pod_door_animations[] = {
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
        .start = 3,
        .end = 3
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
        .start = 3,
        .end = 3
    }
};

const UWORD sprite_pod_door_animations_lookup[] = {
    SPRITE_31_STATE_DEFAULT
};

const struct spritesheet_t sprite_pod_door = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_pod_door_metasprites,
    .animations = sprite_pod_door_animations,
    .animations_lookup = sprite_pod_door_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_pod_door),
    .cgb_tileset = { NULL, NULL }
};
