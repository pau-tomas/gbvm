.module script_timer

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_TO_VAR = -1
.LOCAL_TMP3_TILE_INDEX = -1
.LOCAL_TMP4_TO_VAR = -1
.LOCAL_TMP1_TILE_INDEX = -2
.LOCAL_TMP2_TO_VAR = -2
.LOCAL_TMP5_TILE_INDEX = -2

___bank_script_timer = 255
.globl ___bank_script_timer

_script_timer::
        VM_RESERVE              2

        ; Calculate max frame
        ; Variable Set To
        VM_SET_CONST            .LOCAL_TMP0_TO_VAR, 3


        ; If Variable .LT Value
        VM_IF_CONST             .LT, VAR_S11_WATERFALL_TILE, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Variable Set To
        VM_SET_CONST            VAR_S11_WATERFALL_TILE, 0

2$:

        ; Replace Tile XY
        VM_RPN
            .R_REF      VAR_S11_WATERFALL_TILE
            .R_REF_SET  .LOCAL_TMP1_TILE_INDEX
            .R_STOP
        VM_REPLACE_TILE_XY      22, 6, ___bank_tileset_waterfall, _tileset_waterfall, .LOCAL_TMP1_TILE_INDEX
        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_S11_WATERFALL_TILE
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_S11_WATERFALL_TILE
            .R_STOP

        ; If Variable .GT Variable
        VM_IF                   .GT, VAR_S11_WATERFALL_TILE, .LOCAL_TMP0_TO_VAR, 3$, 0
        VM_JUMP                 4$
3$:
        ; Variable Set To
        VM_SET_CONST            VAR_S11_WATERFALL_TILE, 0

4$:

        ; Calculate max frame
        ; Variable Set To
        VM_SET_CONST            .LOCAL_TMP2_TO_VAR, 7


        ; If Variable .LT Value
        VM_IF_CONST             .LT, VAR_S11_WATERTILE, 4, 5$, 0
        VM_JUMP                 6$
5$:
        ; Variable Set To
        VM_SET_CONST            VAR_S11_WATERTILE, 4

6$:

        ; Replace Tile XY
        VM_RPN
            .R_REF      VAR_S11_WATERTILE
            .R_REF_SET  .LOCAL_TMP3_TILE_INDEX
            .R_STOP
        VM_REPLACE_TILE_XY      22, 17, ___bank_tileset_waterfall, _tileset_waterfall, .LOCAL_TMP3_TILE_INDEX
        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_S11_WATERTILE
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_S11_WATERTILE
            .R_STOP

        ; If Variable .GT Variable
        VM_IF                   .GT, VAR_S11_WATERTILE, .LOCAL_TMP2_TO_VAR, 7$, 0
        VM_JUMP                 8$
7$:
        ; Variable Set To
        VM_SET_CONST            VAR_S11_WATERTILE, 4

8$:

        ; Calculate max frame
        ; Variable Set To
        VM_SET_CONST            .LOCAL_TMP4_TO_VAR, 3


        ; If Variable .LT Value
        VM_IF_CONST             .LT, VAR_S11_FLOWER_TILE, 0, 9$, 0
        VM_JUMP                 10$
9$:
        ; Variable Set To
        VM_SET_CONST            VAR_S11_FLOWER_TILE, 0

10$:

        ; Replace Tile XY
        VM_RPN
            .R_REF      VAR_S11_FLOWER_TILE
            .R_REF_SET  .LOCAL_TMP5_TILE_INDEX
            .R_STOP
        VM_REPLACE_TILE_XY      4, 11, ___bank_tileset_flowers, _tileset_flowers, .LOCAL_TMP5_TILE_INDEX
        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_S11_FLOWER_TILE
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_S11_FLOWER_TILE
            .R_STOP

        ; If Variable .GT Variable
        VM_IF                   .GT, VAR_S11_FLOWER_TILE, .LOCAL_TMP4_TO_VAR, 11$, 0
        VM_JUMP                 12$
11$:
        ; Variable Set To
        VM_SET_CONST            VAR_S11_FLOWER_TILE, 0

12$:

        ; Stop Script
        VM_STOP
