#pragma bank 255

// Scene: town/Launch Site
// Triggers

#include "gbs_types.h"
#include "data/trigger_37_interact.h"
#include "data/trigger_38_interact.h"

BANKREF(scene_launch_site_triggers)

const struct trigger_t scene_launch_site_triggers[] = {
    {
        // Trigger 1,
        .x = 6,
        .y = 17,
        .width = 8,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_37_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 15,
        .y = 9,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_38_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
