#pragma bank 255

// Background: east

#include "gbs_types.h"
#include "data/bg_east_tileset_town_tileset.h"
#include "data/bg_east_tileset_town_tilemap.h"

BANKREF(bg_east_tileset_town)

const struct background_t bg_east_tileset_town = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_east_tileset_town_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_east_tileset_town_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
