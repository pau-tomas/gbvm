.include "vm.i"
.include "macro.i"
.include "data/game_globals.i"

; define constants in rom bank 0
.area _CODE

_start_scene_x:: 
        .dw 768
_start_scene_y:: 
        .dw 640 
_start_scene_dir:: 
        .db .DIR_DOWN
_start_scene::
        IMPORT_FAR_PTR_DATA _scene_level_1
_start_player_move_speed:: 
        .db 16
_start_player_anim_tick:: 
        .db 15
_ui_fonts:: 
        IMPORT_FAR_PTR_DATA _symbol_2


; define engine init VM routine which will be packed into some bank
.area _CODE_255

___bank_script_engine_init = 255
.globl ___bank_script_engine_init

.globl _topdown_grid
.globl _fade_style

_script_engine_init::
        VM_SET_CONST_INT8      _topdown_grid, 16
        VM_SET_CONST_INT8      _fade_style, 0

        ; return from init routine
        VM_RET_FAR
