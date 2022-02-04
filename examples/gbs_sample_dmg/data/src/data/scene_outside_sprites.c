#pragma bank 255

// Scene: Outside
// Sprites

#include "gbs_types.h"
#include "data/sprite_rock.h"
#include "data/sprite_signpost.h"
#include "data/sprite_duck.h"
#include "data/sprite_npc003.h"
#include "data/sprite_cat.h"
#include "data/sprite_npc001.h"

BANKREF(scene_outside_sprites)

const far_ptr_t scene_outside_sprites[] = {
    TO_FAR_PTR_T(sprite_rock),
    TO_FAR_PTR_T(sprite_signpost),
    TO_FAR_PTR_T(sprite_duck),
    TO_FAR_PTR_T(sprite_npc003),
    TO_FAR_PTR_T(sprite_cat),
    TO_FAR_PTR_T(sprite_npc001)
};
