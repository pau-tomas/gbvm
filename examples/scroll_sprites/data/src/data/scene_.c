#pragma bank 255

// Scene: Scene 1

#include "gbs_types.h"
#include "data/bg_placeholder.h"
#include "data/scene__collisions.h"
#include "data/palette_0.h"
#include "data/palette_2.h"
#include "data/sprite_6_colors.h"
#include "data/script_s0_init.h"

BANKREF(scene_)

const struct scene_t scene_ = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_placeholder),
    .collisions = TO_FAR_PTR_T(scene__collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_2),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_6_colors),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 0,
    .n_projectiles = 0,
    .script_init = TO_FAR_PTR_T(script_s0_init)
};
