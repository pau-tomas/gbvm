#pragma bank 255
// SpriteSheet: actor
  
#include "gbs_types.h"

const void __at(255) __bank_spritesheet_0;

const metasprite_t spritesheet_0_metasprite_0[]  = {
  { 0, 8, 4, 64 }, { 0, -8, 4, 96 },
{metasprite_end}
};

const metasprite_t spritesheet_0_metasprite_1[]  = {
  { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
{metasprite_end}
};

const metasprite_t spritesheet_0_metasprite_2[]  = {
  { 0, 8, 4, 0 }, { 0, -8, 4, 32 },
{metasprite_end}
};

const metasprite_t spritesheet_0_metasprite_3[]  = {
  { 0, 0, 0, 32 }, { 0, 8, 2, 32 },
{metasprite_end}
};

const metasprite_t * const spritesheet_0_metasprites[] = {
    spritesheet_0_metasprite_0,
    spritesheet_0_metasprite_1,
    spritesheet_0_metasprite_2,
    spritesheet_0_metasprite_3
};

const struct spritesheet_t spritesheet_0 = {
    .n_tiles = 6,
    .n_metasprites = 4,
    .metasprites = spritesheet_0_metasprites,
    .animations = {
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
    },
    .tiles = {
        0x00, 0x00, 0x00, 0x00, 0xE0, 0xE0, 0xB0, 0xF0, 0x98, 0xF8, 0x8C, 0xFC, 0x86, 0x7E, 0x82, 0x7E,
        0x82, 0x7E, 0x86, 0x7E, 0x8C, 0xFC, 0x98, 0xF8, 0xB0, 0xF0, 0xE0, 0xE0, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x7F, 0x7F, 0x40, 0x7F, 0x40,
        0x7F, 0x40, 0x7F, 0x40, 0x7F, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0xC0, 0xC0, 0x60, 0xE0, 0x30, 0xF0, 0x18, 0xF8, 0x0C, 0xFC, 0x04, 0xFC, 0xFC, 0x3C,
        0xE0, 0x20, 0xE0, 0x20, 0xE0, 0x20, 0xE0, 0x20, 0xE0, 0x20, 0xE0, 0x20, 0xE0, 0xE0, 0x00, 0x00
    }
};
