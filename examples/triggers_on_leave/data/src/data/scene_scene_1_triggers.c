#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"
#include "data/trigger_2_interact.h"
#include "data/trigger_3_interact.h"
#include "data/trigger_4_interact.h"
#include "data/trigger_5_interact.h"
#include "data/trigger_6_interact.h"
#include "data/trigger_12_interact.h"
#include "data/trigger_13_interact.h"
#include "data/trigger_14_interact.h"
#include "data/trigger_15_interact.h"
#include "data/trigger_16_interact.h"
#include "data/trigger_17_interact.h"
#include "data/trigger_18_interact.h"
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

BANKREF(scene_scene_1_triggers)

const struct trigger_t scene_scene_1_triggers[] = {
    {
        // Trigger 1,
        .x = 3,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 9,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 15,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 3,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_4_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 5,
        .x = 9,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_5_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 6,
        .x = 15,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_6_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 7,
        .x = 10,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_12_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .x = 10,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_13_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .x = 10,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_14_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .x = 3,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_15_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 11,
        .x = 3,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_16_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 12,
        .x = 9,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_17_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 13,
        .x = 15,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_18_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 14,
        .x = 4,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_19_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 15,
        .x = 10,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_20_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 16,
        .x = 16,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_21_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 17,
        .x = 16,
        .y = 14,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_22_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 18,
        .x = 9,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_23_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 19,
        .x = 15,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_24_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 20,
        .x = 16,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_25_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 21,
        .x = 16,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_26_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 22,
        .x = 16,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_27_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 23,
        .x = 10,
        .y = 14,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_28_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 24,
        .x = 4,
        .y = 14,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_29_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
