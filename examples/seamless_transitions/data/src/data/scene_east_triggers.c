#pragma bank 255

// Scene: East
// Triggers

#include "gbs_types.h"
#include "data/trigger_east_to_west_interact.h"

BANKREF(scene_east_triggers)

const struct trigger_t scene_east_triggers[] = {
    {
        // Trigger 1,
        .x = 0,
        .y = 0,
        .width = 1,
        .height = 18,
        .script = TO_FAR_PTR_T(trigger_east_to_west_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
