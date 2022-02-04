#pragma bank 255

// Background: town

#include "gbs_types.h"
#include "data/tileset_town.h"
#include "data/bg_town_tilemap.h"
#include "data/bg_town_tilemap_attr.h"

BANKREF(bg_town)

const struct background_t bg_town = {
    .width = 61,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_town),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_town_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_town_tilemap_attr)
};
