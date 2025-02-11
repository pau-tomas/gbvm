#pragma bank 255

// Background: titlescreen

#include "gbs_types.h"
#include "data/bg_titlescreen_tileset.h"
#include "data/bg_titlescreen_tilemap.h"

BANKREF(bg_titlescreen)

const struct background_t bg_titlescreen = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_titlescreen_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_titlescreen_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
