#pragma bank 255

// Scene: Player's House
// Triggers

#include "gbs_types.h"
#include "data/script_s4t0_interact.h"
#include "data/script_s4t1_interact.h"
#include "data/script_s4t2_interact.h"
#include "data/script_s4t3_interact.h"
#include "data/script_s4t4_interact.h"
#include "data/script_s4t5_interact.h"
#include "data/script_s4t6_interact.h"
#include "data/script_s4t7_interact.h"
#include "data/script_s4t8_interact.h"
#include "data/script_s4t9_interact.h"
#include "data/script_s4t10_interact.h"

BANKREF(scene_player_s_house_triggers)

const struct trigger_t scene_player_s_house_triggers[] = {
    {
        // Trigger 1,
        .left = 6,
        .top = 15,
        .right = 7,
        .bottom = 16,
        .script = TO_FAR_PTR_T(script_s4t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 8,
        .top = 8,
        .right = 9,
        .bottom = 9,
        .script = TO_FAR_PTR_T(script_s4t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 4,
        .top = 4,
        .right = 6,
        .bottom = 7,
        .script = TO_FAR_PTR_T(script_s4t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 10,
        .top = 7,
        .right = 12,
        .bottom = 9,
        .script = TO_FAR_PTR_T(script_s4t3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 18,
        .top = 2,
        .right = 19,
        .bottom = 14,
        .script = TO_FAR_PTR_T(script_s4t4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .left = 5,
        .top = 11,
        .right = 9,
        .bottom = 11,
        .script = TO_FAR_PTR_T(script_s4t5_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 7,
        .left = 10,
        .top = 11,
        .right = 13,
        .bottom = 14,
        .script = TO_FAR_PTR_T(script_s4t6_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .left = 5,
        .top = 12,
        .right = 9,
        .bottom = 12,
        .script = TO_FAR_PTR_T(script_s4t7_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .left = 5,
        .top = 13,
        .right = 9,
        .bottom = 14,
        .script = TO_FAR_PTR_T(script_s4t8_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .left = 10,
        .top = 15,
        .right = 11,
        .bottom = 17,
        .script = TO_FAR_PTR_T(script_s4t9_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 11,
        .left = 0,
        .top = 0,
        .right = 1,
        .bottom = 17,
        .script = TO_FAR_PTR_T(script_s4t10_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
