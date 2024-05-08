#pragma bank 255

// Background: transition

#include "gbs_types.h"
#include "data/bg_transition_tileset.h"
#include "data/bg_transition_tilemap.h"

BANKREF(bg_transition)

const struct background_t bg_transition = {
    .width = 40,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_transition_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_transition_tilemap),
    .cgb_tilemap_attr = { NULL, NULL }
};
