#pragma bank 255

// Scene: path/Parallax Example
// Triggers

#include "gbs_types.h"
#include "data/trigger_40_interact.h"

BANKREF(scene_parallax_example_triggers)

const struct trigger_t scene_parallax_example_triggers[] = {
    {
        // Trigger 1,
        .left = 79,
        .top = 12,
        .right = 79,
        .bottom = 13,
        .script = TO_FAR_PTR_T(trigger_40_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
