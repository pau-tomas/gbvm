#ifndef COLLISIONS_H
#define COLLISIONS_H

#include <gb/gb.h>
#include "math.h"

#define COLLISION_TOP 0x1
#define COLLISION_BOTTOM 0x2
#define COLLISION_LEFT 0x4
#define COLLISION_RIGHT 0x8
#define COLLISION_ALL 0xF
#define TILE_PROP_LADDER 0x10

typedef struct bounding_box_t {
    BYTE left, right, top, bottom;
} bounding_box_t;

/**
 * Check if point is within positioned bounding box.
 *
 * @param bb Pointer to bounding box
 * @param offset Pointer to position offset for bounding box (e.g Actor position)
 * @param point Pointer to position to look for within bounding box
 * @return Point is within bounding box
 */
UBYTE bb_contains(bounding_box_t *bb, upoint16_t *offset, upoint16_t *point);

/**
 * Check if two positioned bounding boxes intersect.
 *
 * @param bb_a Pointer to bounding box A
 * @param offset_a Pointer to position offset for bounding box A
 * @param bb_b Pointer to bounding box B
 * @param offset_b Pointer to position offset for bounding box B
 * @return Positioned bounding boxes intersect
 */
UBYTE bb_intersects(bounding_box_t *bb_a, upoint16_t *offset_a, bounding_box_t *bb_b, upoint16_t *offset_b);

/**
 * Return collision tile value at given tile x,y coordinate.
 *
 * @param tx Left tile
 * @param ty Top tile
 * @return Tile value, 0 if no collisions, COLLISION_ALL if out of bounds
 */
UBYTE tile_at(UBYTE tx, UBYTE ty);

/**
 * Return collision tile value at given tile x,y coordinate. (check 2 tiles wide, 1 tile high)
 *
 * @param tx Left tile
 * @param ty Top tile
 * @return Tile value, 0 if no collisions, COLLISION_ALL if out of bounds
 */
UBYTE tile_at_2x1(UBYTE tx, UBYTE ty);

/**
 * Return collision tile value at given tile x,y coordinate. (check 2 tiles wide, 2 tiles high)
 *
 * @param tx Left tile
 * @param ty Top tile
 * @return Tile value, 0 if no collisions, COLLISION_ALL if out of bounds
 */
UBYTE tile_at_2x2(UBYTE tx, UBYTE ty);

#endif