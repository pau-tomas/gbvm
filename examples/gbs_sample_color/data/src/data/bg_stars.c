#pragma bank 255

// Background: stars

#include "gbs_types.h"
#include "data/tileset_stars.h"
#include "data/bg_stars_tilemap.h"
#include "data/bg_stars_tilemap_attr.h"

BANKREF(bg_stars)

const struct background_t bg_stars = {
    .width = 32,
    .height = 32,
    .tileset = TO_FAR_PTR_T(tileset_stars),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_stars_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_stars_tilemap_attr)
};
