#pragma bank 255

// Background: hidden_cave

#include "gbs_types.h"
#include "data/tileset_hidden_cave.h"
#include "data/bg_hidden_cave_tilemap.h"
#include "data/bg_hidden_cave_tilemap_attr.h"

BANKREF(bg_hidden_cave)

const struct background_t bg_hidden_cave = {
    .width = 32,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_hidden_cave),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_hidden_cave_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_hidden_cave_tilemap_attr)
};
