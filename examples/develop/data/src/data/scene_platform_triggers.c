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
        .left = 56,
        .top = 17,
        .right = 58,
        .bottom = 17,
        .script = TO_FAR_PTR_T(script_s5t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 160,
        .top = 0,
        .right = 160,
        .bottom = 13,
        .script = TO_FAR_PTR_T(script_s5t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 106,
        .top = 17,
        .right = 110,
        .bottom = 17,
        .script = TO_FAR_PTR_T(script_s5t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 6,
        .top = 13,
        .right = 7,
        .bottom = 13,
        .script = TO_FAR_PTR_T(script_s5t3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 13,
        .top = 8,
        .right = 14,
        .bottom = 8,
        .script = TO_FAR_PTR_T(script_s5t4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
