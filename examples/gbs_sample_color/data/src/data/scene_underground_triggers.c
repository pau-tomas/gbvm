#pragma bank 255

// Scene: Underground
// Triggers

#include "gbs_types.h"
#include "data/script_s5t0_interact.h"
#include "data/script_s5t1_interact.h"

BANKREF(scene_underground_triggers)

const struct trigger_t scene_underground_triggers[] = {
    {
        // Trigger 1,
        .x = 21,
        .y = 30,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s5t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 11,
        .y = 11,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s5t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
