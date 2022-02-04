#pragma bank 255

// Background: letters

#include "gbs_types.h"
#include "data/tileset_letters.h"
#include "data/bg_letters_tilemap.h"

BANKREF(bg_letters)

const struct background_t bg_letters = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_letters),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_letters_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
