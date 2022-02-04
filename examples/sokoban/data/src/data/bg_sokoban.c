#pragma bank 255

// Background: sokoban

#include "gbs_types.h"
#include "data/tileset_sokoban.h"
#include "data/bg_sokoban_tilemap.h"
#include "data/bg_sokoban_tilemap_attr.h"

BANKREF(bg_sokoban)

const struct background_t bg_sokoban = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_sokoban),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_sokoban_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_sokoban_tilemap_attr)
};
