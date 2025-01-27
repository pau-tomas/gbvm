#pragma bank 255

// Background: platform_path

#include "gbs_types.h"
#include "data/bg_platform_path_tileset.h"
#include "data/bg_platform_path_tilemap.h"
#include "data/bg_platform_path_tilemap_attr.h"

BANKREF(bg_platform_path)

const struct background_t bg_platform_path = {
    .width = 161,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_platform_path_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_platform_path_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_platform_path_tilemap_attr)
};
