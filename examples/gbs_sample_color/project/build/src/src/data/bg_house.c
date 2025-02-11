#pragma bank 255

// Background: house

#include "gbs_types.h"
#include "data/bg_house_tileset.h"
#include "data/bg_house_tilemap.h"
#include "data/bg_house_tilemap_attr.h"

BANKREF(bg_house)

const struct background_t bg_house = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_house_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_house_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_house_tilemap_attr)
};
