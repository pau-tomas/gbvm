#pragma bank 1

#include "Camera.h"

#include "Actor.h"

INT16 camera_x = 0;
INT16 camera_y = 0;
BYTE camera_offset_x = 0;
BYTE camera_offset_y = 0;
BYTE camera_deadzone_x = 0;
BYTE camera_deadzone_y = 0;
UBYTE camera_settings = 0;

void camera_init() __banked
{
    camera_settings = CAMERA_LOCK_FLAG;
    camera_deadzone_x = 0;
    camera_deadzone_y = 0;
}

void camera_update() __banked
{
    if (camera_settings & CAMERA_LOCK_FLAG) {
        // Camera locked to player
        actor_t *actor = &actors[0];

        // Horizontal lock
        if (camera_x < actor->x - camera_deadzone_x - camera_offset_x) { 
            camera_x = actor->x - camera_deadzone_x - camera_offset_x;
        } else if (camera_x > actor->x + camera_deadzone_x - camera_offset_x) { 
            camera_x = actor->x + camera_deadzone_x - camera_offset_x;
        }

        // Vertical lock
        if (camera_y < actor->y - camera_deadzone_y - camera_offset_y) { 
            camera_y = actor->y - camera_deadzone_y - camera_offset_y;
        } else if (camera_y > actor->y + camera_deadzone_y - camera_offset_y) { 
            camera_y = actor->y + camera_deadzone_y - camera_offset_y;
        }
    }
}
