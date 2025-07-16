#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/trigger_6_interact.h"
#include "data/trigger_7_interact.h"

BANKREF(scene_1_triggers)

const struct trigger_t scene_1_triggers[] = {
    {
        // Trigger 1,
        .left = 2,
        .top = 23,
        .right = 3,
        .bottom = 24,
        .script = TO_FAR_PTR_T(trigger_6_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 2,
        .top = 10,
        .right = 3,
        .bottom = 11,
        .script = TO_FAR_PTR_T(trigger_7_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
