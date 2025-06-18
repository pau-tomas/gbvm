#pragma bank 255

// Scene: Player's House
// Triggers

#include "gbs_types.h"
#include "data/trigger_19_interact.h"
#include "data/trigger_20_interact.h"
#include "data/trigger_21_interact.h"
#include "data/trigger_22_interact.h"
#include "data/trigger_23_interact.h"
#include "data/trigger_24_interact.h"
#include "data/trigger_25_interact.h"
#include "data/trigger_26_interact.h"
#include "data/trigger_27_interact.h"
#include "data/trigger_28_interact.h"
#include "data/trigger_29_interact.h"

BANKREF(scene_player_s_house_triggers)

const struct trigger_t scene_player_s_house_triggers[] = {
    {
        // Trigger 1,
        .left = 6,
        .top = 15,
        .right = 7,
        .bottom = 16,
        .script = TO_FAR_PTR_T(trigger_19_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 8,
        .top = 8,
        .right = 9,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_20_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 4,
        .top = 4,
        .right = 6,
        .bottom = 7,
        .script = TO_FAR_PTR_T(trigger_21_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 10,
        .top = 7,
        .right = 12,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_22_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 18,
        .top = 2,
        .right = 19,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_23_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .left = 5,
        .top = 11,
        .right = 9,
        .bottom = 11,
        .script = TO_FAR_PTR_T(trigger_24_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 7,
        .left = 10,
        .top = 11,
        .right = 13,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_25_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .left = 5,
        .top = 12,
        .right = 9,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_26_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .left = 5,
        .top = 13,
        .right = 9,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_27_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .left = 10,
        .top = 15,
        .right = 11,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_28_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 11,
        .left = 0,
        .top = 0,
        .right = 1,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_29_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
