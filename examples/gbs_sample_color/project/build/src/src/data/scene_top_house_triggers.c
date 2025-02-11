#pragma bank 255

// Scene: town/Top House
// Triggers

#include "gbs_types.h"
#include "data/trigger_15_interact.h"

BANKREF(scene_top_house_triggers)

const struct trigger_t scene_top_house_triggers[] = {
    {
        // Trigger 1,
        .x = 9,
        .y = 16,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_15_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
