#pragma bank 255

// Scene: Scene 1
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc003.h"

BANKREF(test_scene_sprites)

const far_ptr_t test_scene_sprites[] = {
    TO_FAR_PTR_T(sprite_npc003)
};
