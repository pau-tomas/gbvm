#pragma bank 255

// SpriteSheet: player-platform

#include "gbs_types.h"
#include "data/spritesheet_12_tiles.h"

const void __at(255) __bank_spritesheet_12;

#define SPRITE_12_STATE_DEFAULT 0

// Right Idle

const metasprite_t spritesheet_12_metasprite_right_idle_1[]  = {
    {-13, 0,  0, 0}, {0, 8,  2, 0},
    {13, -8, 10, 0}, {0, 8, 12, 0},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_right_idle_2[]  = {
    {-12, 0,  0, 0}, {0, 8,  2, 0},
    {12, -8, 10, 0}, {0, 8, 12, 0},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_right_idle_3[]  = {
    {-13, 0,  0, 0}, {0, 8,  4, 0},
    {13, -8, 10, 0}, {0, 8, 12, 0},
    {metasprite_end}
};

// Left Idle

const metasprite_t spritesheet_12_metasprite_left_idle_1[]  = {
    {-13, 0,  2, 0x20}, {0, 8,  0, 0x20},
    {13, -8, 12, 0x20}, {0, 8, 10, 0x20},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_left_idle_2[]  = {
    {-12, 0,  2, 0x20}, {0, 8,  0, 0x20},
    {12, -8, 12, 0x20}, {0, 8, 10, 0x20},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_left_idle_3[]  = {
    {-13, 0,  4, 0x20}, {0, 8,  0, 0x20},
    {13, -8, 12, 0x20}, {0, 8, 10, 0x20},
    {metasprite_end}
};

// Right Walk

const metasprite_t spritesheet_12_metasprite_right_walk_1[]  = {
    {-13, 0,  0, 0}, {0, 8,  2, 0},
    {13, -8, 14, 0}, {0, 8, 16, 0},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_right_walk_2[]  = {
    {-13, 0,  0, 0}, {0, 8,  2, 0},
    {13, -8, 18, 0}, {0, 8, 20, 0},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_right_walk_3[]  = {
    {-13, 0,  0, 0}, {0, 8,  2, 0},
    {13, -8, 22, 0}, {0, 8, 24, 0},
    {metasprite_end}
};

// Left Walk

const metasprite_t spritesheet_12_metasprite_left_walk_1[]  = {
    {-13, 0,  2, 0x20}, {0, 8,  0, 0x20},
    {13, -8, 16, 0x20}, {0, 8, 14, 0x20},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_left_walk_2[]  = {
    {-13, 0,  2, 0x20}, {0, 8,  0, 0x20},
    {13, -8, 20, 0x20}, {0, 8, 18, 0x20},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_left_walk_3[]  = {
    {-13, 0,  2, 0x20}, {0, 8,  0, 0x20},
    {13, -8, 24, 0x20}, {0, 8, 22, 0x20},
    {metasprite_end}
};

// Right Jump

const metasprite_t spritesheet_12_metasprite_right_jump_1[]  = {
    {-13, 0,  0, 0}, {0, 8,  2, 0},
    {13, -8, 26, 0}, {0, 8, 28, 0},
    {metasprite_end}
};

// Left Jump

const metasprite_t spritesheet_12_metasprite_left_jump_1[]  = {
    {-13, 0,  2, 0x20}, {0, 8,  0, 0x20},
    {13, -8, 28, 0x20}, {0, 8, 26, 0x20},
    {metasprite_end}
};

// Climb

const metasprite_t spritesheet_12_metasprite_climb_1[]  = {
    {-13, 0,  6, 0}, {0, 8, 8, 0},
    {12, -8, 30, 0}, {0, 8, 32, 0},
    {metasprite_end}
};

const metasprite_t spritesheet_12_metasprite_climb_2[]  = {
    {-13, 0,  6, 0}, {0, 8, 8, 0},
    {12, -8, 32, 0x20}, {0, 8, 30, 0x20},
    {metasprite_end}
};

const metasprite_t * const spritesheet_12_metasprites[] = {
    // Right Idle
    spritesheet_12_metasprite_right_idle_1,
    spritesheet_12_metasprite_right_idle_1,
    spritesheet_12_metasprite_right_idle_1,
    spritesheet_12_metasprite_right_idle_3,
    spritesheet_12_metasprite_right_idle_1,
    spritesheet_12_metasprite_right_idle_1,
    spritesheet_12_metasprite_right_idle_1,
    spritesheet_12_metasprite_right_idle_2,
    // Left Idle
    spritesheet_12_metasprite_left_idle_1,
    spritesheet_12_metasprite_left_idle_1,
    spritesheet_12_metasprite_left_idle_1,
    spritesheet_12_metasprite_left_idle_3,
    spritesheet_12_metasprite_left_idle_1,
    spritesheet_12_metasprite_left_idle_1,
    spritesheet_12_metasprite_left_idle_1,
    spritesheet_12_metasprite_left_idle_2,
    // Right Walk
    spritesheet_12_metasprite_right_walk_1,
    spritesheet_12_metasprite_right_walk_2,
    spritesheet_12_metasprite_right_walk_3,
    // Left Walk
    spritesheet_12_metasprite_left_walk_1,
    spritesheet_12_metasprite_left_walk_2,
    spritesheet_12_metasprite_left_walk_3,
    // Right Jump
    spritesheet_12_metasprite_right_jump_1,
    // Left Jump
    spritesheet_12_metasprite_left_jump_1,   
    // Climb 
    spritesheet_12_metasprite_climb_1,   
    spritesheet_12_metasprite_climb_2,
};

const struct animation_t spritesheet_12_animations[] = {
        // Idle
        { .start = 23, .end = 23 }, // jump left
        { .start = 0,  .end = 7 }, // right
        { .start = 22, .end = 22 }, // jump right
        { .start = 8,  .end = 15 }, // left
        // Moving
        { .start = 23, .end = 23 }, // jump left
        { .start = 16, .end = 18 }, // right
        { .start = 24, .end = 25 }, // climb
        { .start = 19, .end = 21 }, // left
};

const UWORD spritesheet_12_animations_lookup[] = {
    SPRITE_12_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_12 = {
    .n_metasprites = 6,
    .metasprites = spritesheet_12_metasprites,
    .animations = spritesheet_12_animations,
    .animations_lookup = spritesheet_12_animations_lookup,
    .bounds = {
        .left = PX_TO_SUBPX(0),
        .bottom = PX_TO_SUBPX(7),
        .right = PX_TO_SUBPX(15),
        .top = PX_TO_SUBPX(-8)
    },    
    .tileset = TO_FAR_PTR_T(spritesheet_12_tiles),
    .cgb_tileset = { NULL, NULL },
};
