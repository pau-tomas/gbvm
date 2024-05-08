#pragma bank 255

// Scene: West
// Triggers

#include "gbs_types.h"
#include "data/trigger_west_to_east_interact.h"

BANKREF(scene_west_triggers)

const struct trigger_t scene_west_triggers[] = {
    {
        // Trigger 1,
        .x = 19,
        .y = 0,
        .width = 1,
        .height = 18,
        .script = TO_FAR_PTR_T(trigger_west_to_east_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
