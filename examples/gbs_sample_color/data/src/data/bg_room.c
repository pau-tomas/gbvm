#pragma bank 255

// Background: room

#include "gbs_types.h"
#include "data/tileset_room.h"
#include "data/bg_room_tilemap.h"
#include "data/bg_room_tilemap_attr.h"

BANKREF(bg_room)

const struct background_t bg_room = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_room),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_room_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_room_tilemap_attr)
};
