#pragma bank 255

// Scene: Scene 1
// Sprites

#include "gbs_types.h"
#include "data/sprite_rock.h"
#include "data/sprite_bullet_right.h"
#include "data/sprite_bullet.h"
#include "data/sprite_bullet_left.h"
#include "data/sprite_dog.h"

BANKREF(scene_1_sprites)

const far_ptr_t scene_1_sprites[] = {
    TO_FAR_PTR_T(sprite_rock),
    TO_FAR_PTR_T(sprite_bullet_right),
    TO_FAR_PTR_T(sprite_bullet),
    TO_FAR_PTR_T(sprite_bullet_left),
    TO_FAR_PTR_T(sprite_dog)
};
