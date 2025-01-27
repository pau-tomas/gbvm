#pragma bank 255

// Background: outside

#include "gbs_types.h"
#include "data/symbol_tileset.h"
#include "data/symbol_tilemap.h"

BANKREF(symbol)

const struct background_t symbol = {
    .width = 32,
    .height = 32,
    .tileset = TO_FAR_PTR_T(symbol_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(symbol_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
