#pragma bank 255

// Scene: space/Space Battle
// Triggers

#include "gbs_types.h"
#include "data/trigger_18_interact.h"

BANKREF(scene_space_battle_triggers)

const struct trigger_t scene_space_battle_triggers[] = {
    {
        // Trigger 1,
        .left = 231,
        .top = 0,
        .right = 231,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_18_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
