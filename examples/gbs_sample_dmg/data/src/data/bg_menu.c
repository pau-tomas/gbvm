#pragma bank 255

// Background: menu

#include "gbs_types.h"
#include "data/bg_menu_tileset.h"
#include "data/bg_menu_tilemap.h"

BANKREF(bg_menu)

const struct background_t bg_menu = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_menu_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_menu_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
