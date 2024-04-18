#pragma bank 255

// Background: west

#include "gbs_types.h"
#include "data/bg_west_tileset.h"
#include "data/bg_west_tilemap.h"

BANKREF(bg_west)

const struct background_t bg_west = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_west_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_west_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
