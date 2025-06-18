#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/script_s0t0_interact.h"
#include "data/script_s0t1_interact.h"

BANKREF(scene_scene_1_triggers)

const struct trigger_t scene_scene_1_triggers[] = {
    {.left = 1,
.top = 1,
.right = 9,
.bottom = 9,

        // Caps Letters,
        .script = TO_FAR_PTR_T(script_s0t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {.left = 10,
.top = 1,
.right = 18,
.bottom = 9,

        // Low letters,
        .script = TO_FAR_PTR_T(script_s0t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
