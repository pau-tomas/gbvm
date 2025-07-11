#pragma bank 255

// Scene: Deeper Underground
// Triggers

#include "gbs_types.h"
#include "data/trigger_19_interact.h"

BANKREF(scene_deeper_underground_triggers)

const struct trigger_t scene_deeper_underground_triggers[] = {
    {
        // Trigger 1,
        .left = 5,
        .top = 0,
        .right = 5,
        .bottom = 0,
        .script = TO_FAR_PTR_T(trigger_19_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
