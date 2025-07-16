#pragma bank 255

// Scene: town/Sample Town
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"
#include "data/trigger_1_interact.h"
#include "data/trigger_2_interact.h"
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

BANKREF(scene_sample_town_triggers)

const struct trigger_t scene_sample_town_triggers[] = {
    {
        // Trigger 1,
        .left = 25,
        .top = 13,
        .right = 26,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 24,
        .top = 8,
        .right = 25,
        .bottom = 8,
        .script = TO_FAR_PTR_T(trigger_1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 10,
        .top = 8,
        .right = 11,
        .bottom = 8,
        .script = TO_FAR_PTR_T(trigger_2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 0,
        .top = 46,
        .right = 0,
        .bottom = 49,
        .script = TO_FAR_PTR_T(trigger_3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .left = 12,
        .top = 46,
        .right = 12,
        .bottom = 49,
        .script = TO_FAR_PTR_T(trigger_4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .left = 13,
        .top = 46,
        .right = 13,
        .bottom = 49,
        .script = TO_FAR_PTR_T(trigger_5_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 7,
        .left = 31,
        .top = 40,
        .right = 32,
        .bottom = 40,
        .script = TO_FAR_PTR_T(trigger_6_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .left = 16,
        .top = 40,
        .right = 17,
        .bottom = 40,
        .script = TO_FAR_PTR_T(trigger_7_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .left = 39,
        .top = 0,
        .right = 51,
        .bottom = 0,
        .script = TO_FAR_PTR_T(trigger_8_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .left = 36,
        .top = 20,
        .right = 42,
        .bottom = 20,
        .script = TO_FAR_PTR_T(trigger_9_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 11,
        .left = 34,
        .top = 29,
        .right = 43,
        .bottom = 29,
        .script = TO_FAR_PTR_T(trigger_10_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 12,
        .left = 44,
        .top = 28,
        .right = 52,
        .bottom = 28,
        .script = TO_FAR_PTR_T(trigger_11_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 13,
        .left = 47,
        .top = 20,
        .right = 52,
        .bottom = 20,
        .script = TO_FAR_PTR_T(trigger_12_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 14,
        .left = 42,
        .top = 42,
        .right = 43,
        .bottom = 51,
        .script = TO_FAR_PTR_T(trigger_13_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
