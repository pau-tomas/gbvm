#pragma bank 255

// Scene: Start
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"
#include "data/trigger_1_interact.h"
#include "data/trigger_2_interact.h"
#include "data/trigger_3_interact.h"

BANKREF(scene_start_triggers)

const struct trigger_t scene_start_triggers[] = {
    {
        // Trigger 1,
        .left = 2,
        .top = 11,
        .right = 29,
        .bottom = 11,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 2,
        .top = 20,
        .right = 29,
        .bottom = 20,
        .script = TO_FAR_PTR_T(trigger_1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 2,
        .top = 12,
        .right = 29,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 2,
        .top = 19,
        .right = 29,
        .bottom = 19,
        .script = TO_FAR_PTR_T(trigger_3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
