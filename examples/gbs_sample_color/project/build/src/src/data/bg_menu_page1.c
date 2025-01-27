#pragma bank 255

// Background: menu_page1

#include "gbs_types.h"
#include "data/bg_menu_page1_tileset.h"
#include "data/bg_menu_page1_tilemap.h"
#include "data/bg_menu_page1_tilemap_attr.h"

BANKREF(bg_menu_page1)

const struct background_t bg_menu_page1 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_menu_page1_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_menu_page1_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_menu_page1_tilemap_attr)
};
