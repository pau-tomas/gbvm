#pragma bank 255

// Scene: caves/Cave
// Triggers

#include "gbs_types.h"
#include "data/trigger_14_interact.h"

BANKREF(scene_cave_triggers)

const struct trigger_t scene_cave_triggers[] = {
    {
        // Trigger 1,
        .left = 9,
        .top = 17,
        .right = 10,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_14_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
