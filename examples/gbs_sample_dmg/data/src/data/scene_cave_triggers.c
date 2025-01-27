#pragma bank 255

// Scene: Cave
// Triggers

#include "gbs_types.h"
#include "data/trigger_3_interact.h"

BANKREF(scene_cave_triggers)

const struct trigger_t scene_cave_triggers[] = {
    {
        // Trigger 1,
        .x = 9,
        .y = 17,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
