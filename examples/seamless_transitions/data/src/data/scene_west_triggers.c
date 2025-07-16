#pragma bank 255

// Scene: West
// Triggers

#include "gbs_types.h"
#include "data/trigger_west_to_east_interact.h"

BANKREF(scene_west_triggers)

const struct trigger_t scene_west_triggers[] = {
    {
        // Trigger 1,
        .left = 19,
        .top = 0,
        .right = 19,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_west_to_east_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
