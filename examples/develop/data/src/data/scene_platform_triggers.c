#pragma bank 255

// Scene: Platform
// Triggers

#include "gbs_types.h"
#include "data/script_s5t0_interact.h"
#include "data/script_s5t1_interact.h"
#include "data/script_s5t2_interact.h"
#include "data/script_s5t3_interact.h"
#include "data/script_s5t4_interact.h"

BANKREF(scene_platform_triggers)

const struct trigger_t scene_platform_triggers[] = {
    {
        // Trigger 1,
        .x = 56,
        .y = 17,
        .width = 3,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s5t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 160,
        .y = 0,
        .width = 1,
        .height = 14,
        .script = TO_FAR_PTR_T(script_s5t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 106,
        .y = 17,
        .width = 5,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s5t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 6,
        .y = 13,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s5t3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 13,
        .y = 8,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s5t4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
