#pragma bank 255

// Scene: Outside
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"
#include "data/trigger_1_interact.h"
#include "data/trigger_2_interact.h"

BANKREF(scene_outside_triggers)

const struct trigger_t scene_outside_triggers[] = {
    {
        // Trigger 1,
        .left = 25,
        .top = 13,
        .right = 26,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 24,
        .top = 8,
        .right = 25,
        .bottom = 8,
        .script = TO_FAR_PTR_T(trigger_1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 10,
        .top = 8,
        .right = 11,
        .bottom = 8,
        .script = TO_FAR_PTR_T(trigger_2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
