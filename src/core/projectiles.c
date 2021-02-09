#pragma bank 3

#include "projectiles.h"

#include <string.h>

#include "scroll.h"
#include "actor.h"
#include "metasprite.h"
#include "linked_list.h"
#include "game_time.h"
#include "vm.h"
#include "data/spritesheet_0.h"

projectile_t projectiles[MAX_PROJECTILES];
projectile_def_t projectile_defs[MAX_PROJECTILE_DEFS];
projectile_t *projectiles_active_head;
projectile_t *projectiles_inactive_head;

void projectiles_init() __banked {
    UBYTE i;
    projectiles_active_head = NULL;
    projectiles_inactive_head = NULL;
    for ( i=0; i != MAX_PROJECTILES; i++ ) {
        LL_PUSH_HEAD(projectiles_inactive_head, &projectiles[i]);
    }
}

void projectiles_update() __banked {
    static projectile_t *projectile;
    static projectile_t *prev_projectile;
    projectile_t *next;

    projectile = projectiles_active_head;
    prev_projectile = NULL;

    while (projectile) {
        if (projectile->def.life_time == 0) {
            // Remove projectile
            next = projectile->next;
            LL_REMOVE_ITEM(projectiles_active_head, projectile, prev_projectile);
            LL_PUSH_HEAD(projectiles_inactive_head, projectile);
            projectile = next;
            continue;
        }
        projectile->def.life_time--;
    
        // Check reached animation tick frame
        if ((game_time & projectile->def.anim_tick) == 0) {
            projectile->def.frame++;
            // Check reached end of animation
            if (projectile->def.frame == projectile->def.frame_end) {
                projectile->def.frame = projectile->def.frame_start;
            }
        }

        // Move projectile
        point_translate_angle(&projectile->pos, projectile->angle, projectile->def.move_speed);

        actor_t *hit_actor = actor_overlapping_bb(&projectile->def.bounds, &projectile->pos, FALSE);
        if (hit_actor) {
            // Hit! - Fire collision script here
            if (hit_actor->script.bank) {
                script_execute(hit_actor->script.bank, hit_actor->script.ptr, 0, 0);
            }

            // Remove projectile
            next = projectile->next;
            LL_REMOVE_ITEM(projectiles_active_head, projectile, prev_projectile);
            LL_PUSH_HEAD(projectiles_inactive_head, projectile);
            projectile = next;
            continue;            
        }

        prev_projectile = projectile;
        projectile = projectile->next;
    }
}

void projectiles_render() __nonbanked {
    static projectile_t *projectile;
    static projectile_t *prev_projectile;

    UBYTE _save = _current_bank;

    projectile = projectiles_active_head;
    prev_projectile = NULL;

    while (projectile) {
        UINT8 screen_x = (projectile->pos.x >> 4) - draw_scroll_x + 8,
              screen_y = (projectile->pos.y >> 4) - draw_scroll_y;

        if (screen_x > 160 || screen_y > 144) {
            // Remove projectile
            projectile_t *next = projectile->next;
            LL_REMOVE_ITEM(projectiles_active_head, projectile, prev_projectile);
            LL_PUSH_HEAD(projectiles_inactive_head, projectile);
            projectile = next;
            continue;
        }

        SWITCH_ROM_MBC1(projectile->def.sprite.bank);
        spritesheet_t *sprite = projectile->def.sprite.ptr;
    
        allocated_hardware_sprites += move_metasprite(
            *(sprite->metasprites + projectile->def.frame),
            projectile->def.base_tile,
            allocated_hardware_sprites,
            screen_x,
            screen_y
        );

        prev_projectile = projectile;
        projectile = projectile->next;
    }

    SWITCH_ROM_MBC1(_save);
}

void projectile_launch(UBYTE index, upoint16_t *pos, UBYTE angle) __banked {    
    projectile_t *projectile = projectiles_inactive_head;
    if (projectile) {
        projectile->pos.x = pos->x;
        projectile->pos.y = pos->y;
        projectile->angle = angle;
        memcpy(&projectile->def, &projectile_defs[index], sizeof(projectile_def_t));
        LL_REMOVE_HEAD(projectiles_inactive_head);
        LL_PUSH_HEAD(projectiles_active_head, projectile);
    }
}
