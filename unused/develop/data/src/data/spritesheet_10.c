#pragma bank 255

// SpriteSheet: elephant

#include "gbs_types.h"
#include "data/spritesheet_10_tiles.h"

const void __at(255) __bank_spritesheet_10;

#define SPRITE_10_STATE_DEFAULT 0

const metasprite_t spritesheet_10_metasprite_0[]  = {
    {-32,  8,  0,  0}, { 0,  8,  2,  0}, { 0,  8,  4,  0}, { 0,  8,  6,  0}, { 0,  8,  8,  0}, { 0,  8,  0, 32}, 
    {16, -40, 10,  0}, { 0,  8, 12,  0}, { 0,  8, 14,  0}, { 0,  8, 16,  0}, { 0,  8, 16, 32}, { 0,  8, 18,  0}, { 0,  8, 20,  0}, 
    {16, -48, 22,  0},                   { 0, 16, 24,  0}, { 0,  8, 26,  0}, { 0,  8, 28,  0}, { 0,  8, 30,  0}, { 0,  8, 32,  0}, 
    {metasprite_end}
};
const metasprite_t spritesheet_10_metasprite_1[] = {
                      { -32,  8,  0,  0}, { 0,  8,  2,  0}, { 0,  8,  4,  0}, { 0,  8,  6,  0}, { 0,  8,  8,  0}, { 0,  8,  0, 32}, 
                      {16,-40, 10,  0}, { 0,  8, 12,  0}, { 0,  8, 14,  0}, { 0,  8, 16,  0}, { 0,  8, 16, 32}, { 0,  8, 18,  0}, { 0,  8, 34,  0}, 
    {16,-56, 36,  0}, { 0,  8, 38,  0},                   { 0, 16, 24,  0}, { 0,  8, 26,  0}, { 0,  8, 28,  0}, { 0,  8, 30,  0}, { 0,  8, 40,  0}, 
    {metasprite_end}
};

const metasprite_t spritesheet_10_metasprite_2[] = {
                      { -32,  8,  0,  0}, { 0,  8,  2,  0}, { 0,  8,  4,  0}, { 0,  8,  6,  0}, { 0,  8,  8,  0}, { 0,  8,  0, 32}, 
                      {16,-40, 10,  0}, { 0,  8, 12,  0}, { 0,  8, 14,  0}, { 0,  8, 16,  0}, { 0,  8, 16, 32}, { 0,  8, 18,  0}, { 0,  8, 42,  0}, 
    {16,-56, 44,  0}, { 0,  8, 46,  0},                   { 0, 16, 24,  0}, { 0,  8, 26,  0}, { 0,  8, 28,  0}, { 0,  8, 30,  0}, { 0,  8, 48,  0}, 
    {metasprite_end}
};

const metasprite_t spritesheet_10_metasprite_3[] = {
                      { -32,  8,  0,  0}, { 0,  8,  2,  0}, { 0,  8,  4,  0}, { 0,  8,  6,  0}, { 0,  8,  8,  0}, { 0,  8,  0, 32}, 
                      {16,-40, 10,  0}, { 0,  8, 12,  0}, { 0,  8, 14,  0}, { 0,  8, 16,  0}, { 0,  8, 16, 32}, { 0,  8, 18,  0}, { 0,  8, 34,  0}, 
    {16,-56, 50,  0}, { 0,  8, 52,  0},                   { 0, 16, 24,  0}, { 0,  8, 26,  0}, { 0,  8, 28,  0}, { 0,  8, 30,  0}, { 0,  8, 40,  0}, 
    {metasprite_end}
};

const metasprite_t spritesheet_10_metasprite_4[] = {
                      { -32,  8,  0,  0}, { 0,  8,  2,  0}, { 0,  8,  4,  0}, { 0,  8,  6,  0}, { 0,  8,  8,  0}, { 0,  8,  0, 32}, 
                      {16,-40, 10,  0}, { 0,  8, 12,  0}, { 0,  8, 14,  0}, { 0,  8, 16,  0}, { 0,  8, 16, 32}, { 0,  8, 18,  0}, { 0,  8, 20,  0}, 
    {16,-56, 54,  0}, { 0,  8, 52,  0},                   { 0, 16, 24,  0}, { 0,  8, 26,  0}, { 0,  8, 28,  0}, { 0,  8, 30,  0}, { 0,  8, 32,  0}, 
    {metasprite_end}
};

const metasprite_t * const spritesheet_10_metasprites[] = {
    spritesheet_10_metasprite_0, 
    spritesheet_10_metasprite_1, 
    spritesheet_10_metasprite_2, 
    spritesheet_10_metasprite_3, 
    spritesheet_10_metasprite_4, 
    spritesheet_10_metasprite_3, 
    spritesheet_10_metasprite_2, 
    spritesheet_10_metasprite_1   
};

const struct animation_t spritesheet_10_animations[] = {
    // Idle
    { .start = 0, .end = 7 }, // bottom
    { .start = 0, .end = 7 }, // right
    { .start = 0, .end = 7 }, // top
    { .start = 0, .end = 7 }, // left
    // Moving
    { .start = 0, .end = 7 }, // bottom
    { .start = 0, .end = 7 }, // right
    { .start = 0, .end = 7 }, // top
    { .start = 0, .end = 7 }, // left     
};

const UWORD spritesheet_10_animations_lookup[] = {
    SPRITE_10_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_10 = {
    .n_metasprites = 8,
    .metasprites = spritesheet_10_metasprites,
    .animations = spritesheet_10_animations,
    .animations_lookup = spritesheet_10_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(7),
        .right = PX_TO_SUBPX(15),
        .top = PX_TO_SUBPX(-8)
    },
    .tileset = TO_FAR_PTR_T(spritesheet_10_tiles),
    .cgb_tileset = { NULL, NULL },     
};
