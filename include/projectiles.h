#ifndef PROJECTILES_H
#define PROJECTILES_H

#include "math.h"
#include "collision.h"
#include "gbs_types.h"

#define MAX_PROJECTILES 5
#define MAX_PROJECTILE_DEFS 5

typedef struct projectile_t
{
    upoint16_t pos;
    bounding_box_t bounds;
    UBYTE angle;
    UBYTE life_time;
    UINT8 base_tile;
    UINT8 frame;
    UINT8 frame_start;
    UINT8 frame_end;
    UINT8 anim_tick;
    UINT8 move_speed;
    collision_group_e collision_group;
    far_ptr_t sprite;
    struct projectile_t *next;
} projectile_t;

void projectiles_init() __banked;
void projectiles_update() __banked;
void projectile_launch(UBYTE index, upoint16_t *pos, UBYTE angle) __banked;

#endif
