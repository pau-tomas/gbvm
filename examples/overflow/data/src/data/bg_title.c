#pragma bank 255

// Background: title

#include "gbs_types.h"
#include "data/bg_title_tileset.h"
#include "data/bg_title_tilemap.h"
#include "data/bg_title_tilemap_attr.h"

BANKREF(bg_title)

const struct background_t bg_title = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_title_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_title_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_title_tilemap_attr)
};
