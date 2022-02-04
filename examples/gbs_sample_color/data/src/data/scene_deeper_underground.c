#pragma bank 255

// Scene: Deeper Underground

#include "gbs_types.h"
#include "data/bg_hidden_cave.h"
#include "data/scene_deeper_underground_collisions.h"
#include "data/palette_1.h"
#include "data/palette_8.h"
#include "data/sprite_player.h"
#include "data/scene_deeper_underground_actors.h"
#include "data/scene_deeper_underground_triggers.h"
#include "data/scene_deeper_underground_sprites.h"
#include "data/script_s13_init.h"

BANKREF(scene_deeper_underground)

const struct scene_t scene_deeper_underground = {
    .width = 32,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(bg_hidden_cave),
    .collisions = TO_FAR_PTR_T(scene_deeper_underground_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_1),
    .sprite_palette = TO_FAR_PTR_T(palette_8),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_player),
    .n_actors = 1,
    .n_triggers = 1,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_deeper_underground_actors),
    .triggers = TO_FAR_PTR_T(scene_deeper_underground_triggers),
    .sprites = TO_FAR_PTR_T(scene_deeper_underground_sprites),
    .script_init = TO_FAR_PTR_T(script_s13_init)
};
