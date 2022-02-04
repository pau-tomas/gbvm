#pragma bank 255

// Scene: Menu
// Sprites

#include "gbs_types.h"
#include "data/sprite_checkbox.h"

BANKREF(scene_menu_sprites)

const far_ptr_t scene_menu_sprites[] = {
    TO_FAR_PTR_T(sprite_checkbox)
};
