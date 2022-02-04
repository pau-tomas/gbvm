#pragma bank 255

// Scene: Path to Sample Town

#include "gbs_types.h"
#include "data/bg_platform_path.h"
#include "data/scene_path_to_sample_town_collisions.h"
#include "data/palette_5.h"
#include "data/palette_8.h"
#include "data/sprite_player.h"
#include "data/scene_path_to_sample_town_actors.h"
#include "data/scene_path_to_sample_town_triggers.h"
#include "data/scene_path_to_sample_town_sprites.h"
#include "data/script_s10_init.h"

BANKREF(scene_path_to_sample_town)

const struct scene_t scene_path_to_sample_town = {
    .width = 161,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(bg_platform_path),
    .collisions = TO_FAR_PTR_T(scene_path_to_sample_town_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_5),
    .sprite_palette = TO_FAR_PTR_T(palette_8),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_player),
    .n_actors = 7,
    .n_triggers = 5,
    .n_sprites = 3,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_path_to_sample_town_actors),
    .triggers = TO_FAR_PTR_T(scene_path_to_sample_town_triggers),
    .sprites = TO_FAR_PTR_T(scene_path_to_sample_town_sprites),
    .script_init = TO_FAR_PTR_T(script_s10_init)
};
