#pragma bank 255

// Background: titlescreen

#include "gbs_types.h"
#include "data/tileset_titlescreen.h"
#include "data/bg_titlescreen_tilemap.h"
#include "data/bg_titlescreen_tilemap_attr.h"

BANKREF(bg_titlescreen)

const struct background_t bg_titlescreen = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_titlescreen),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_titlescreen_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_titlescreen_tilemap_attr)
};
