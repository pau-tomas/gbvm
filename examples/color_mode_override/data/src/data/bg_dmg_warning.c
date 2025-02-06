#pragma bank 255

// Background: dmg_warning

#include "gbs_types.h"
#include "data/bg_dmg_warning_tileset.h"
#include "data/bg_dmg_warning_tilemap.h"
#include "data/bg_dmg_warning_tilemap_attr.h"

BANKREF(bg_dmg_warning)

const struct background_t bg_dmg_warning = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_dmg_warning_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_dmg_warning_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_dmg_warning_tilemap_attr)
};
