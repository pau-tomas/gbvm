#pragma bank 255

// Background: underground

#include "gbs_types.h"
#include "data/bg_underground_tileset.h"
#include "data/bg_underground_tilemap.h"
#include "data/bg_underground_tilemap_attr.h"

BANKREF(bg_underground)

const struct background_t bg_underground = {
    .width = 32,
    .height = 32,
    .tileset = TO_FAR_PTR_T(bg_underground_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_underground_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_underground_tilemap_attr)
};
