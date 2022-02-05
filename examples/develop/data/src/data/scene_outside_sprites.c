#pragma bank 255

// Scene: Outside
// Sprites

#include "gbs_types.h"
#include "data/sprite_npc003.h"
#include "data/sprite_torch.h"
#include "data/sprite_bullet_directional.h"

BANKREF(scene_outside_sprites)

const far_ptr_t scene_outside_sprites[] = {
    TO_FAR_PTR_T(sprite_npc003),
    TO_FAR_PTR_T(sprite_torch),
    TO_FAR_PTR_T(sprite_bullet_directional)
};
