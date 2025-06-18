#pragma bank 255

// Scene: town/Music House
// Triggers

#include "gbs_types.h"
#include "data/trigger_41_interact.h"

BANKREF(scene_17_triggers)

const struct trigger_t scene_17_triggers[] = {
    {
        // Trigger 1,
        .left = 9,
        .top = 16,
        .right = 10,
        .bottom = 16,
        .script = TO_FAR_PTR_T(trigger_41_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
