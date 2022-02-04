#pragma bank 255

// Background: logo

#include "gbs_types.h"
#include "data/tileset_logo.h"
#include "data/bg_logo_tilemap.h"

BANKREF(bg_logo)

const struct background_t bg_logo = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_logo),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_logo_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
