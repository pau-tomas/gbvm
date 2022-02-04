#pragma bank 255

// Scene: Deep Space
// Triggers

#include "gbs_types.h"
#include "data/script_s11t0_interact.h"

BANKREF(scene_deep_space_triggers)

const struct trigger_t scene_deep_space_triggers[] = {
    {
        // Trigger 1,
        .x = 14,
        .y = 9,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s11t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
