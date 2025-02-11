#pragma bank 255

// Scene: town/Launch Site
// Sprites

#include "gbs_types.h"
#include "data/sprite_pod_door.h"
#include "data/sprite_npc005.h"
#include "data/sprite_machine.h"

BANKREF(scene_launch_site_sprites)

const far_ptr_t scene_launch_site_sprites[] = {
    TO_FAR_PTR_T(sprite_pod_door),
    TO_FAR_PTR_T(sprite_npc005),
    TO_FAR_PTR_T(sprite_machine)
};
