#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/script_s0t0_interact.h"
#include "data/script_s0t1_interact.h"
#include "data/script_s0t2_interact.h"
#include "data/script_s0t3_interact.h"
#include "data/script_s0t4_interact.h"
#include "data/script_s0t5_interact.h"
#include "data/script_s0t6_interact.h"
#include "data/script_s0t7_interact.h"
#include "data/script_s0t8_interact.h"
#include "data/script_s0t9_interact.h"
#include "data/script_s0t10_interact.h"
#include "data/script_s0t11_interact.h"
#include "data/script_s0t12_interact.h"
#include "data/script_s0t13_interact.h"
#include "data/script_s0t14_interact.h"
#include "data/script_s0t15_interact.h"
#include "data/script_s0t16_interact.h"
#include "data/script_s0t17_interact.h"
#include "data/script_s0t18_interact.h"
#include "data/script_s0t19_interact.h"
#include "data/script_s0t20_interact.h"
#include "data/script_s0t21_interact.h"
#include "data/script_s0t22_interact.h"
#include "data/script_s0t23_interact.h"

BANKREF(scene_scene_1_triggers)

const struct trigger_t scene_scene_1_triggers[] = {
    {
        // Trigger 1,
        .x = 3,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 9,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 15,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 3,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t3_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 5,
        .x = 9,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t4_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 6,
        .x = 15,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t5_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 7,
        .x = 10,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t6_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .x = 10,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t7_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .x = 10,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t8_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 10,
        .x = 3,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t9_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 11,
        .x = 3,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t10_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 12,
        .x = 9,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t11_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 13,
        .x = 15,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t12_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 14,
        .x = 4,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t13_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 15,
        .x = 10,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t14_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 16,
        .x = 16,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t15_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 17,
        .x = 16,
        .y = 14,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t16_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 18,
        .x = 9,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t17_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 19,
        .x = 15,
        .y = 11,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t18_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 20,
        .x = 16,
        .y = 2,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t19_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 21,
        .x = 16,
        .y = 5,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t20_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 22,
        .x = 16,
        .y = 8,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t21_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 23,
        .x = 10,
        .y = 14,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t22_interact),
        .script_flags = TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 24,
        .x = 4,
        .y = 14,
        .width = 1,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s0t23_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
