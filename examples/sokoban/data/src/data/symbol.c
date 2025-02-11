#pragma bank 255

// Background: sokoban

#include "gbs_types.h"
#include "data/symbol_tileset.h"
#include "data/symbol_tilemap.h"
#include "data/symbol_tilemap_attr.h"

BANKREF(symbol)

const struct background_t symbol = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(symbol_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(symbol_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(symbol_tilemap_attr)
};
