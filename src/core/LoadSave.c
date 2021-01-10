#pragma bank 1

#include <string.h>

#include "LoadSave.h"

#include "actor.h"
#include "vm.h"
#include "events.h"
#include "MusicManager.h"
#include "DataManager.h"
#ifdef BATTERYLESS
    #include "BankData.h"
    #include "flasher.h"
#endif

const UINT32 signature = 0x45564153;

typedef struct save_point_t {
    void * target;
    size_t size;
} save_point_t;

#define SAVEPOINT(A) {&(A), sizeof(A)}
#define SAVEPOINTS_END {0, 0}

const save_point_t save_points[] = {
    // scene
    SAVEPOINT(current_scene),
    // actors
    SAVEPOINT(actors),
    SAVEPOINT(actors_active_head), SAVEPOINT(actors_inactive_head), SAVEPOINT(player_moving), SAVEPOINT(player_collision_actor),
    // VM contexts
    SAVEPOINT(CTXS),
    SAVEPOINT(first_ctx), SAVEPOINT(free_ctxs), SAVEPOINT(vm_lock_state),
    // intupt events
    SAVEPOINT(input_events), SAVEPOINT(input_slots), 
    // timers
    SAVEPOINT(timer_events), SAVEPOINT(timer_values),
    // music events
    SAVEPOINT(music_events),
    // terminator
    SAVEPOINTS_END
};

#ifdef BATTERYLESS
    extern void _start_save; 
#endif

void data_init() __banked {
    ENABLE_RAM_MBC5;
#ifdef BATTERYLESS
    UINT32 rom_signarture;
    MemcpyBanked(&rom_signarture, (void *)0x4000, sizeof(rom_signarture), (UBYTE)&_start_save);
    if (rom_signarture == signature) restore_sram_bank(0);
#endif
}

UBYTE data_is_saved() __banked {
    SWITCH_RAM_MBC5(0);
    UBYTE * save_data = (UBYTE *)0xA000;
    return (*((UINT32 *)save_data) == signature);
}

void data_save() __banked {
    SWITCH_RAM_MBC5(0);
    UBYTE * save_data = (UBYTE *)0xA000;
    *((UINT32 *)save_data) = signature; save_data += sizeof(signature);
    
    for(const save_point_t * point = save_points; (point->target); point++) {
        memcpy(save_data, point->target, point->size);
        save_data += point->size;  
    }
#ifdef BATTERYLESS
    save_sram(1);
#endif
}

UBYTE data_load() __banked {
    if (!data_is_saved()) return FALSE;
    SWITCH_RAM_MBC5(0);
    UBYTE * save_data = (UBYTE *)0xA000 + sizeof(signature);

    for(const save_point_t * point = save_points; (point->target); point++) {
        memcpy(point->target, save_data, point->size);    
        save_data += point->size;  
    }   

    return TRUE;
}
