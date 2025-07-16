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
        .left = 3,
        .top = 2,
        .right = 3,
        .bottom = 3,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .left = 9,
        .top = 2,
        .right = 9,
        .bottom = 3,
        .script = TO_FAR_PTR_T(trigger_2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .left = 15,
        .top = 2,
        .right = 15,
        .bottom = 3,
        .script = TO_FAR_PTR_T(trigger_3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 3,
        .top = 5,
        .right = 3,
        .bottom = 6,
        .script = TO_FAR_PTR_T(trigger_4_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 5,
        .left = 9,
        .top = 5,
        .right = 9,
        .bottom = 6,
        .script = TO_FAR_PTR_T(trigger_5_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 6,
        .left = 15,
        .top = 5,
        .right = 15,
        .bottom = 6,
        .script = TO_FAR_PTR_T(trigger_6_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 7,
        .left = 10,
        .top = 2,
        .right = 10,
        .bottom = 3,
        .script = TO_FAR_PTR_T(trigger_12_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .left = 10,
        .top = 5,
        .right = 10,
        .bottom = 6,
        .script = TO_FAR_PTR_T(trigger_13_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .left = 10,
        .top = 8,
        .right = 10,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_14_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .left = 3,
        .top = 8,
        .right = 3,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_15_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 11,
        .left = 3,
        .top = 11,
        .right = 3,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_16_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 12,
        .left = 9,
        .top = 8,
        .right = 9,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_17_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 13,
        .left = 15,
        .top = 8,
        .right = 15,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_18_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 14,
        .left = 4,
        .top = 11,
        .right = 4,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_19_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 15,
        .left = 10,
        .top = 11,
        .right = 10,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_20_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 16,
        .left = 16,
        .top = 11,
        .right = 16,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_21_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 17,
        .left = 16,
        .top = 14,
        .right = 16,
        .bottom = 15,
        .script = TO_FAR_PTR_T(trigger_22_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 18,
        .left = 9,
        .top = 11,
        .right = 9,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_23_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 19,
        .left = 15,
        .top = 11,
        .right = 15,
        .bottom = 12,
        .script = TO_FAR_PTR_T(trigger_24_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 20,
        .left = 16,
        .top = 2,
        .right = 16,
        .bottom = 3,
        .script = TO_FAR_PTR_T(trigger_25_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 21,
        .left = 16,
        .top = 5,
        .right = 16,
        .bottom = 6,
        .script = TO_FAR_PTR_T(trigger_26_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 22,
        .left = 16,
        .top = 8,
        .right = 16,
        .bottom = 9,
        .script = TO_FAR_PTR_T(trigger_27_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 23,
        .left = 10,
        .top = 14,
        .right = 10,
        .bottom = 15,
        .script = TO_FAR_PTR_T(trigger_28_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 24,
        .left = 4,
        .top = 14,
        .right = 4,
        .bottom = 15,
        .script = TO_FAR_PTR_T(trigger_29_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
