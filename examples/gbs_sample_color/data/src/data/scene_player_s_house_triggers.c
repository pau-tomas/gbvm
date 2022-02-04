#pragma bank 255

// Scene: Player's House
// Triggers

#include "gbs_types.h"
#include "data/script_s8t0_interact.h"
#include "data/script_s8t1_interact.h"
#include "data/script_s8t2_interact.h"
#include "data/script_s8t3_interact.h"
#include "data/script_s8t4_interact.h"
#include "data/script_s8t5_interact.h"
#include "data/script_s8t6_interact.h"
#include "data/script_s8t7_interact.h"
#include "data/script_s8t8_interact.h"
#include "data/script_s8t9_interact.h"
#include "data/script_s8t10_interact.h"

BANKREF(scene_player_s_house_triggers)

const struct trigger_t scene_player_s_house_triggers[] = {
    {
        // Trigger 1,
        .x = 6,
        .y = 15,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s8t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 8,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s8t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 4,
        .y = 4,
        .width = 3,
        .height = 4,
        .script = TO_FAR_PTR_T(script_s8t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 10,
        .y = 7,
        .width = 3,
        .height = 3,
        .script = TO_FAR_PTR_T(script_s8t3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 18,
        .y = 2,
        .width = 2,
        .height = 13,
        .script = TO_FAR_PTR_T(script_s8t4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .x = 5,
        .y = 11,
        .width = 5,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s8t5_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 7,
        .x = 10,
        .y = 11,
        .width = 4,
        .height = 4,
        .script = TO_FAR_PTR_T(script_s8t6_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .x = 5,
        .y = 12,
        .width = 5,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s8t7_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .x = 5,
        .y = 13,
        .width = 5,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s8t8_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .x = 10,
        .y = 15,
        .width = 2,
        .height = 3,
        .script = TO_FAR_PTR_T(script_s8t9_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 11,
        .x = 0,
        .y = 0,
        .width = 2,
        .height = 18,
        .script = TO_FAR_PTR_T(script_s8t10_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
