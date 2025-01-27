#pragma bank 255

// Scene: Title
// Sprites

#include "gbs_types.h"
#include "data/sprite_press_start.h"
#include "data/sprite_continue.h"
#include "data/sprite_new_game.h"
#include "data/sprite_button_a.h"
#include "data/sprite_button_b.h"

BANKREF(scene_title_sprites)

const far_ptr_t scene_title_sprites[] = {
    TO_FAR_PTR_T(sprite_press_start),
    TO_FAR_PTR_T(sprite_continue),
    TO_FAR_PTR_T(sprite_new_game),
    TO_FAR_PTR_T(sprite_button_a),
    TO_FAR_PTR_T(sprite_button_b)
};
