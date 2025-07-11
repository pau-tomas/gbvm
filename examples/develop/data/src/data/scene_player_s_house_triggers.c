#pragma bank 255

// Scene: Player's House
// Triggers

#include "gbs_types.h"
#include "data/trigger_3_interact.h"
#include "data/trigger_4_interact.h"
#include "data/trigger_5_interact.h"
#include "data/trigger_6_interact.h"
#include "data/trigger_7_interact.h"
#include "data/trigger_8_interact.h"
#include "data/trigger_9_interact.h"
#include "data/trigger_10_interact.h"
#include "data/trigger_11_interact.h"
#include "data/trigger_12_interact.h"
#include "data/trigger_13_interact.h"

BANKREF(scene_player_s_house_triggers)

const struct trigger_t scene_player_s_house_triggers[] = {
    {
        // Trigger 1,
        .left = 6,
        .top = 15,
        .right = 7,
        .bottom = 16,
        .script = TO_FAR_PTR_T(trigger_3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 8,
        .top = 8,
        .right = 9,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 4,
        .top = 4,
        .right = 6,
        .bottom = 7,
        .script = TO_FAR_PTR_T(trigger_5_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 10,
        .top = 7,
        .right = 12,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_6_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 18,
        .top = 2,
        .right = 19,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_7_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .left = 5,
        .top = 11,
        .right = 9,
        .bottom = 11,
        .script = TO_FAR_PTR_T(trigger_8_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 7,
        .left = 10,
        .top = 11,
        .right = 13,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_9_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .left = 5,
        .top = 12,
        .right = 9,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_10_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .left = 5,
        .top = 13,
        .right = 9,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_11_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .left = 10,
        .top = 15,
        .right = 11,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_12_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 11,
        .left = 0,
        .top = 0,
        .right = 1,
        .bottom = 17,
        .script = TO_FAR_PTR_T(trigger_13_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
