#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/trigger_caps_letters_interact.h"
#include "data/trigger_low_letters_interact.h"

BANKREF(scene_scene_1_triggers)

const struct trigger_t scene_scene_1_triggers[] = {
    {
        // Caps Letters,
        .left = 1,
        .top = 1,
        .right = 9,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_caps_letters_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Low letters,
        .left = 10,
        .top = 1,
        .right = 18,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_low_letters_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
