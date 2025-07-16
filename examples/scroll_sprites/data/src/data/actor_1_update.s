.module actor_1_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1
.LOCAL_TMP1_WAIT_ARGS = -1
.LOCAL_TMP2_WAIT_ARGS = -1
.LOCAL_TMP3_WAIT_ARGS = -1

___bank_actor_1_update = 255
.globl ___bank_actor_1_update

_actor_1_update::
        VM_RESERVE              1

1$:
        ; Variable Set To
        VM_SET_CONST            VAR_TILE, 0

        VM_REPLACE_TILE_XY      2, 13, ___bank_bg_placeholder_tileset, _bg_placeholder_tileset, VAR_TILE

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Variable Set To
        VM_SET_CONST            VAR_TILE, 1

        VM_REPLACE_TILE_XY      2, 13, ___bank_bg_placeholder_tileset, _bg_placeholder_tileset, VAR_TILE

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Variable Set To
        VM_SET_CONST            VAR_TILE, 0

        VM_REPLACE_TILE_XY      2, 13, ___bank_bg_placeholder_tileset, _bg_placeholder_tileset, VAR_TILE

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Variable Set To
        VM_SET_CONST            VAR_TILE, 2

        VM_REPLACE_TILE_XY      2, 13, ___bank_bg_placeholder_tileset, _bg_placeholder_tileset, VAR_TILE

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
