#pragma bank 255

// Background: logo_test

#include "gbs_types.h"
#include "data/bg_logo_test_tileset.h"
#include "data/bg_logo_test_tilemap.h"
#include "data/bg_logo_test_tilemap_attr.h"

BANKREF(bg_logo_test)

const struct background_t bg_logo_test = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_logo_test_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_logo_test_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_logo_test_tilemap_attr)
};
