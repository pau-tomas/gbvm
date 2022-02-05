#pragma bank 255

// Scene: Start
// Triggers

#include "gbs_types.h"
#include "data/script_s0t0_interact.h"
#include "data/script_s0t1_interact.h"
#include "data/script_s0t2_interact.h"
#include "data/script_s0t3_interact.h"

BANKREF(scene_start_triggers)

const struct trigger_t scene_start_triggers[] = {
    {
        // Trigger 1,
        .x = 2,
        .y = 11,
        .width = 28,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s0t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 2,
        .y = 20,
        .width = 28,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s0t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 2,
        .y = 12,
        .width = 28,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s0t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 2,
        .y = 19,
        .width = 28,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s0t3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
