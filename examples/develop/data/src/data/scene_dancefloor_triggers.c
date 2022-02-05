#pragma bank 255

// Scene: Dancefloor
// Triggers

#include "gbs_types.h"
#include "data/script_s9t0_interact.h"
#include "data/script_s9t1_interact.h"

BANKREF(scene_dancefloor_triggers)

const struct trigger_t scene_dancefloor_triggers[] = {
    {
        // Trigger 1,
        .x = 0,
        .y = 0,
        .width = 1,
        .height = 14,
        .script = TO_FAR_PTR_T(script_s9t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 19,
        .y = 0,
        .width = 1,
        .height = 14,
        .script = TO_FAR_PTR_T(script_s9t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
