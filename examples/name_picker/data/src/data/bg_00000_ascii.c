#pragma bank 255

// Background: 00000-ascii

#include "gbs_types.h"
#include "data/bg_00000_ascii_tileset.h"
#include "data/bg_00000_ascii_tilemap.h"

BANKREF(bg_00000_ascii)

const struct background_t bg_00000_ascii = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_00000_ascii_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_00000_ascii_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
