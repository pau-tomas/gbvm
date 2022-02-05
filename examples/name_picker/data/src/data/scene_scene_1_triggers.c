#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/script_s0t0_interact.h"
#include "data/script_s0t1_interact.h"

BANKREF(scene_scene_1_triggers)

const struct trigger_t scene_scene_1_triggers[] = {
    {
        // Caps Letters,
        .x = 1,
        .y = 1,
        .width = 9,
        .height = 9,
        .script = TO_FAR_PTR_T(script_s0t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Low letters,
        .x = 10,
        .y = 1,
        .width = 9,
        .height = 9,
        .script = TO_FAR_PTR_T(script_s0t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
