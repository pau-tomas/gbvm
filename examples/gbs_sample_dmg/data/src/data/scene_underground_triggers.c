#pragma bank 255

// Scene: Underground
// Triggers

#include "gbs_types.h"
#include "data/trigger_5_interact.h"

BANKREF(scene_underground_triggers)

const struct trigger_t scene_underground_triggers[] = {
    {
        // Trigger 1,
        .left = 21,
        .top = 30,
        .right = 22,
        .bottom = 31,
        .script = TO_FAR_PTR_T(trigger_5_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
