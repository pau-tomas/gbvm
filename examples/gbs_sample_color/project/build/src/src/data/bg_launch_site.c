#pragma bank 255

// Background: launch_site

#include "gbs_types.h"
#include "data/bg_launch_site_tileset.h"
#include "data/bg_launch_site_tilemap.h"
#include "data/bg_launch_site_tilemap_attr.h"

BANKREF(bg_launch_site)

const struct background_t bg_launch_site = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_launch_site_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_launch_site_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_launch_site_tilemap_attr)
};
