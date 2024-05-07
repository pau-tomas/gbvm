#pragma bank 255

// Background: east

#include "gbs_types.h"
#include "data/bg_east_tileset.h"
#include "data/bg_east_tilemap.h"

BANKREF(bg_east)

const struct background_t bg_east = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_east_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_east_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
