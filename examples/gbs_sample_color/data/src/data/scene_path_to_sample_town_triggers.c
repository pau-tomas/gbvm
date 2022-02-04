#pragma bank 255

// Scene: Path to Sample Town
// Triggers

#include "gbs_types.h"
#include "data/script_s10t0_interact.h"
#include "data/script_s10t1_interact.h"
#include "data/script_s10t2_interact.h"
#include "data/script_s10t3_interact.h"
#include "data/script_s10t4_interact.h"

BANKREF(scene_path_to_sample_town_triggers)

const struct trigger_t scene_path_to_sample_town_triggers[] = {
    {
        // Trigger 1,
        .x = 56,
        .y = 17,
        .width = 3,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s10t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 44,
        .y = 0,
        .width = 1,
        .height = 14,
        .script = TO_FAR_PTR_T(script_s10t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 106,
        .y = 17,
        .width = 5,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s10t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 146,
        .y = 13,
        .width = 1,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s10t3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 6,
        .y = 12,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s10t4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
