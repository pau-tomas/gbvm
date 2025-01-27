#pragma bank 255

// Scene: path/Parallax Example
// Sprites

#include "gbs_types.h"
#include "data/sprite_signpost.h"
#include "data/sprite_elephant.h"

BANKREF(scene_parallax_example_sprites)

const far_ptr_t scene_parallax_example_sprites[] = {
    TO_FAR_PTR_T(sprite_signpost),
    TO_FAR_PTR_T(sprite_elephant)
};
