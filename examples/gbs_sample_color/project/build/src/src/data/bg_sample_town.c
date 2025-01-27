#pragma bank 255

// Background: sample_town

#include "gbs_types.h"
#include "data/bg_sample_town_tileset.h"
#include "data/bg_sample_town_tilemap.h"
#include "data/bg_sample_town_tilemap_attr.h"

BANKREF(bg_sample_town)

const struct background_t bg_sample_town = {
    .width = 56,
    .height = 56,
    .tileset = TO_FAR_PTR_T(bg_sample_town_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_sample_town_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_sample_town_tilemap_attr)
};
