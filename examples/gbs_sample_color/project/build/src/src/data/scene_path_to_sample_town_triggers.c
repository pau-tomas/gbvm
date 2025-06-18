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
        .left = 56,
        .top = 17,
        .right = 58,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_30_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 42,
        .top = 0,
        .right = 42,
        .bottom = 13,
        .script = TO_FAR_PTR_T(trigger_31_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 106,
        .top = 17,
        .right = 110,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_32_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 146,
        .top = 13,
        .right = 146,
        .bottom = 13,
        .script = TO_FAR_PTR_T(trigger_33_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 6,
        .top = 12,
        .right = 7,
        .bottom = 13,
        .script = TO_FAR_PTR_T(trigger_34_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .left = 0,
        .top = 12,
        .right = 0,
        .bottom = 13,
        .script = TO_FAR_PTR_T(trigger_35_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
