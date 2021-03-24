#pragma bank 255

// Scene: Scene 1

#include "gbs_types.h"
#include "data/background_0.h"
#include "data/scene_0_collisions.h"
#include "data/spritesheet_0.h"
#include "data/scene_0_sprites.h"
#include "data/script_s0_init.h"

const void __at(255) __bank_scene_0;

const struct scene_t scene_0 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(background_0),
    .collisions = TO_FAR_PTR_T(scene_0_collisions),
    .player_sprite = TO_FAR_PTR_T(spritesheet_0),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 1,
    .sprites = TO_FAR_PTR_T(scene_0_sprites),
    .script_init = TO_FAR_PTR_T(script_s0_init)
};
