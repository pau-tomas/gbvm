#pragma bank 255

// Scene: Launch Site
// Triggers

#include "gbs_types.h"
#include "data/script_s12t0_interact.h"
#include "data/script_s12t1_interact.h"

BANKREF(scene_launch_site_triggers)

const struct trigger_t scene_launch_site_triggers[] = {
    {
        // Trigger 1,
        .x = 6,
        .y = 17,
        .width = 8,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s12t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 15,
        .y = 9,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s12t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
