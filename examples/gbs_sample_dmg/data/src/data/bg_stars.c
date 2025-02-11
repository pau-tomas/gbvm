#pragma bank 255

// Background: stars

#include "gbs_types.h"
#include "data/bg_stars_tileset.h"
#include "data/bg_stars_tilemap.h"

BANKREF(bg_stars)

const struct background_t bg_stars = {
    .width = 32,
    .height = 32,
    .tileset = TO_FAR_PTR_T(bg_stars_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_stars_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
