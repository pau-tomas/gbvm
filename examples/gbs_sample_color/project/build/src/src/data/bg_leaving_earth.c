#pragma bank 255

// Background: leaving_earth

#include "gbs_types.h"
#include "data/bg_leaving_earth_tileset.h"
#include "data/bg_leaving_earth_tilemap.h"
#include "data/bg_leaving_earth_tilemap_attr.h"

BANKREF(bg_leaving_earth)

const struct background_t bg_leaving_earth = {
    .width = 255,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_leaving_earth_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_leaving_earth_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_leaving_earth_tilemap_attr)
};
