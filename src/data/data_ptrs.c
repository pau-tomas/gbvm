#include "data/data_ptrs.h"
#include "data/scene_0.h"
#include "data/spritesheet_0.h"
#include "data/palette_0.h"
#include "data/music_data.h"

const far_ptr_t music_tracks[] = {
    TO_FAR_PTR_T(music_track_101__Data), TO_FAR_PTR_T(music_track_102__Data), TO_FAR_PTR_T(music_track_103__Data), TO_FAR_PTR_T(music_track_104__Data),
    TO_FAR_PTR_T(music_track_105__Data), TO_FAR_PTR_T(music_track_106__Data), TO_FAR_PTR_T(music_track_107__Data), TO_FAR_PTR_T(music_track_108__Data),
    TO_FAR_PTR_T(music_track_109__Data), {0, 0}
};

const INT16 start_scene_x = 32 * 16;
const INT16 start_scene_y = 100 * 16;
const INT8 start_scene_dir_x = 1;
const INT8 start_scene_dir_y = 0;
const far_ptr_t start_scene = TO_FAR_PTR_T(scene_0);
const far_ptr_t start_player_sprite = TO_FAR_PTR_T(spritesheet_0);
const far_ptr_t start_player_palette = TO_FAR_PTR_T(palette_0);
const UBYTE start_player_move_speed = 16;
const UBYTE start_player_anim_tick = 7;
WORD plat_min_vel = 304;
WORD plat_walk_vel = 6400;
WORD plat_run_vel = 10496;
WORD plat_walk_acc = 152;
WORD plat_run_acc = 228;
WORD plat_dec = 208;
WORD plat_jump_vel = 16384;
WORD plat_grav = 1792;
WORD plat_hold_grav = 512;
WORD plat_max_fall_vel = 20000;
UBYTE topdown_grid = 8;
UBYTE fade_style = 1;
