#pragma bank 255

// Scene: caves/Deeper Underground
// Triggers

#include "gbs_types.h"
#include "data/trigger_39_interact.h"

BANKREF(scene_deeper_underground_triggers)

const struct trigger_t scene_deeper_underground_triggers[] = {
    {
        // Trigger 1,
        .left = 4,
        .top = 0,
        .right = 5,
        .bottom = 0,
        .script = TO_FAR_PTR_T(trigger_39_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
