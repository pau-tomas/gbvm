#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/cutscene_trigger_interact.h"

BANKREF(test_scene_triggers)

const struct trigger_t test_scene_triggers[] = {
    {
        // Trigger 1,
        .left = 8,
        .top = 7,
        .right = 8,
        .bottom = 9,
        .script = TO_FAR_PTR_T(cutscene_trigger_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
