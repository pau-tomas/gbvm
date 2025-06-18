#pragma bank 255

// Scene: East
// Triggers

#include "gbs_types.h"
#include "data/trigger_east_to_west_interact.h"

BANKREF(scene_east_triggers)

const struct trigger_t scene_east_triggers[] = {
    {
        // Trigger 1,
        .left = 0,
        .top = 0,
        .right = 0,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_east_to_west_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
