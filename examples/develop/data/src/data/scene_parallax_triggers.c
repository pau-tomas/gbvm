#pragma bank 255

// Scene: Parallax
// Triggers

#include "gbs_types.h"
#include "data/trigger_23_interact.h"
#include "data/trigger_24_interact.h"

BANKREF(scene_parallax_triggers)

const struct trigger_t scene_parallax_triggers[] = {
    {
        // Trigger 1,
        .left = 0,
        .top = 0,
        .right = 0,
        .bottom = 13,
        .script = TO_FAR_PTR_T(trigger_23_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 79,
        .top = 0,
        .right = 79,
        .bottom = 13,
        .script = TO_FAR_PTR_T(trigger_24_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
