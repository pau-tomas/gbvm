#pragma bank 255

// Background: hidden_cave

#include "gbs_types.h"
#include "data/bg_hidden_cave_tileset.h"
#include "data/bg_hidden_cave_tilemap.h"
#include "data/bg_hidden_cave_tilemap_attr.h"

BANKREF(bg_hidden_cave)

const struct background_t bg_hidden_cave = {
    .width = 32,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_hidden_cave_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_hidden_cave_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_hidden_cave_tilemap_attr)
};
