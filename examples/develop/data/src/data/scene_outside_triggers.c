#pragma bank 255

// Scene: Outside
// Triggers

#include "gbs_types.h"
#include "data/script_s7t0_interact.h"
#include "data/script_s7t1_interact.h"
#include "data/script_s7t2_interact.h"

BANKREF(scene_outside_triggers)

const struct trigger_t scene_outside_triggers[] = {
    {
        // Trigger 1,
        .x = 10,
        .y = 8,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s7t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 24,
        .y = 8,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s7t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 25,
        .y = 13,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s7t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
