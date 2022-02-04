#pragma bank 255

// Background: placeholder

#include "gbs_types.h"
#include "data/tileset_placeholder.h"
#include "data/bg_placeholder_tilemap.h"

BANKREF(bg_placeholder)

const struct background_t bg_placeholder = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_placeholder),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_placeholder_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
