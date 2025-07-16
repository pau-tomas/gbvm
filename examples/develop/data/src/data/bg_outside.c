#pragma bank 255

// Background: outside

#include "gbs_types.h"
#include "data/bg_outside_tileset.h"
#include "data/bg_outside_tilemap.h"
#include "data/bg_outside_tilemap_attr.h"

BANKREF(bg_outside)

const struct background_t bg_outside = {
    .width = 32,
    .height = 32,
    .tileset = TO_FAR_PTR_T(bg_outside_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_outside_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_outside_tilemap_attr)
};
