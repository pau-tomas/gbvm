#pragma bank 255

// Scene: Deeper Underground
// Triggers

#include "gbs_types.h"
#include "data/script_s6t0_interact.h"

BANKREF(scene_deeper_underground_triggers)

const struct trigger_t scene_deeper_underground_triggers[] = {
    {
        // Trigger 1,
        .x = 5,
        .y = 0,
        .width = 1,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s6t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
