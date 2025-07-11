#pragma bank 255

// Background: dancefloor

#include "gbs_types.h"
#include "data/bg_dancefloor_tileset.h"
#include "data/bg_dancefloor_tilemap.h"
#include "data/bg_dancefloor_tilemap_attr.h"

BANKREF(bg_dancefloor)

const struct background_t bg_dancefloor = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_dancefloor_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_dancefloor_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_dancefloor_tilemap_attr)
};
