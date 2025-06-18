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
        .left = 6,
        .top = 17,
        .right = 13,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_37_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 15,
        .top = 9,
        .right = 16,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_38_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
