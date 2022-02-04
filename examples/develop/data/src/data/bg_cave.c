#pragma bank 255

// Background: cave

#include "gbs_types.h"
#include "data/tileset_cave.h"
#include "data/bg_cave_tilemap.h"
#include "data/bg_cave_tilemap_attr.h"

BANKREF(bg_cave)

const struct background_t bg_cave = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_cave),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_cave_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_cave_tilemap_attr)
};
