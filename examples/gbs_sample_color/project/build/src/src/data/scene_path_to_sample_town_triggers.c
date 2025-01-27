#pragma bank 255

// Scene: path/Path to Sample Town
// Triggers

#include "gbs_types.h"
#include "data/trigger_30_interact.h"
#include "data/trigger_31_interact.h"
#include "data/trigger_32_interact.h"
#include "data/trigger_33_interact.h"
#include "data/trigger_34_interact.h"
#include "data/trigger_35_interact.h"

BANKREF(scene_path_to_sample_town_triggers)

const struct trigger_t scene_path_to_sample_town_triggers[] = {
    {
        // Trigger 1,
        .x = 56,
        .y = 17,
        .width = 3,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_30_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 42,
        .y = 0,
        .width = 1,
        .height = 14,
        .script = TO_FAR_PTR_T(trigger_31_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 106,
        .y = 17,
        .width = 5,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_32_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 146,
        .y = 13,
        .width = 1,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_33_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 6,
        .y = 12,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_34_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .x = 0,
        .y = 12,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_35_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
