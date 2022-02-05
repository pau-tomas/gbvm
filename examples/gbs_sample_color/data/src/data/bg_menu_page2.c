#pragma bank 255

// Background: menu_page2

#include "gbs_types.h"
#include "data/tileset_menu_page2.h"
#include "data/bg_menu_page2_tilemap.h"
#include "data/bg_black_tilemap_attr.h"

BANKREF(bg_menu_page2)

const struct background_t bg_menu_page2 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_menu_page2),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_menu_page2_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_black_tilemap_attr)
};
