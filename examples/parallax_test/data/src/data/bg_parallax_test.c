#pragma bank 255

// Background: parallax_test

#include "gbs_types.h"
#include "data/tileset_parallax_test.h"
#include "data/bg_parallax_test_tilemap.h"

BANKREF(bg_parallax_test)

const struct background_t bg_parallax_test = {
    .width = 40,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_parallax_test),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_parallax_test_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
