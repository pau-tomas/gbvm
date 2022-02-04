#pragma bank 255

// Scene: Scene 1

#include "gbs_types.h"
#include "data/bg_placeholder.h"
#include "data/scene__collisions.h"
#include "data/palette_0.h"
#include "data/palette_1.h"
#include "data/sprite_actor.h"
#include "data/scene__actors.h"
#include "data/scene__sprites.h"
#include "data/script_s0_init.h"
#include "data/script_s0_p_hit1.h"

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
    .sprite_palette = TO_FAR_PTR_T(palette_1),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_actor),
    .n_actors = 1,
    .n_triggers = 0,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene__actors),
    .sprites = TO_FAR_PTR_T(scene__sprites),
    .script_init = TO_FAR_PTR_T(script_s0_init),
    .script_p_hit1 = TO_FAR_PTR_T(script_s0_p_hit1)
};
