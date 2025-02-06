#pragma bank 255

// Background: parallax_color

#include "gbs_types.h"
#include "data/bg_parallax_color_tileset.h"
#include "data/bg_parallax_color_cgb_tileset.h"
#include "data/bg_parallax_color_tilemap.h"
#include "data/bg_parallax_color_tilemap_attr.h"

BANKREF(bg_parallax_color)

const struct background_t bg_parallax_color = {
    .width = 80,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_parallax_color_tileset),
    .cgb_tileset = TO_FAR_PTR_T(bg_parallax_color_cgb_tileset),
    .tilemap = TO_FAR_PTR_T(bg_parallax_color_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_parallax_color_tilemap_attr)
};
