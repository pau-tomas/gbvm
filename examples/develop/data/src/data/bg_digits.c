#pragma bank 255

// Background: digits

#include "gbs_types.h"
#include "data/tileset_digits.h"
#include "data/bg_digits_tilemap.h"
#include "data/bg_digits_tilemap_attr.h"

BANKREF(bg_digits)

const struct background_t bg_digits = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_digits),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_digits_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_digits_tilemap_attr)
};
