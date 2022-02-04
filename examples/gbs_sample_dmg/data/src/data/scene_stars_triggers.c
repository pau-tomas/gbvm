#pragma bank 255

// Scene: Stars
// Triggers

#include "gbs_types.h"
#include "data/script_s3t0_interact.h"

BANKREF(scene_stars_triggers)

const struct trigger_t scene_stars_triggers[] = {
    {
        // Trigger 1,
        .x = 15,
        .y = 7,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s3t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
