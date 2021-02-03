#pragma bank 1

#include <string.h>

#include "ui.h"
#include "game_time.h"
#include "data/frame_image.h"
#include "data/font_image.h"
#include "data/cursor_image.h"
#include "bankdata.h"
#include "scroll.h"
#include "input.h"
#include "math.h"
#include "Actor.h"
#include "projectiles.h"
#include "shadow.h"

#define ui_frame_tl_tiles 0xC0u
#define ui_frame_bl_tiles 0xC6u
#define ui_frame_tr_tiles 0xC2u
#define ui_frame_br_tiles 0xC8u
#define ui_frame_t_tiles  0xC1u
#define ui_frame_b_tiles  0xC7u
#define ui_frame_l_tiles  0xC3u
#define ui_frame_r_tiles  0xC5u
#define ui_frame_bg_tiles 0xC4u

const unsigned char ui_white[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
const unsigned char ui_black[16] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                                    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};

const unsigned char avatar_tiles[4] = {TEXT_BUFFER_START, TEXT_BUFFER_START + 2U, TEXT_BUFFER_START + 1U, TEXT_BUFFER_START + 3U};

UBYTE win_pos_x, win_dest_pos_x;
UBYTE win_pos_y, win_dest_pos_y;
UBYTE win_speed;

UBYTE text_drawn;
UBYTE current_text_speed;
UBYTE text_wait;
UBYTE text_line_count;

UBYTE avatar_enabled;

UBYTE menu_enabled;
UBYTE menu_index;
UBYTE menu_item_count;

UBYTE text_in_speed;
UBYTE text_out_speed;
UBYTE text_draw_speed;
UBYTE text_ff_joypad;
UBYTE text_ff; 
UBYTE menu_layout;
UBYTE menu_cancel_on_last_option;
UBYTE menu_cancel_on_b;

unsigned char ui_text_data[80];

// char printer internals
static UBYTE * ui_text_ptr;
static UBYTE * ui_dest_ptr;
static UBYTE * ui_dest_base;
static UBYTE ui_text_width;
static UBYTE ui_width_left;
static UBYTE ui_tile_no;
static UBYTE ui_line_no;

far_ptr_t font_image_ptr = TO_FAR_PTR_T(font_image);

void ui_init() __banked {
    text_in_speed               = 1;
    text_out_speed              = 1;
    text_draw_speed             = 1;
    text_ff_joypad              = 1;
    menu_layout                 = MENU_LAYOUT_1_COLUMN;
    menu_cancel_on_last_option  = 0;
    menu_cancel_on_b            = 0;

    ui_text_ptr                 = 0;
    ui_dest_ptr                 = 0;
    ui_dest_base                = 0;
    ui_text_width               = 0;
    ui_width_left               = 0;
    ui_tile_no                  = 0;
    ui_line_no                  = 0;

    ui_set_pos(0, MENU_CLOSED_Y);

    avatar_enabled              = 0;
    menu_enabled                = 0;
    win_speed                   = 1;
    text_drawn                  = TRUE;
    text_draw_speed             = 1;

    ui_load_tiles();
}

void ui_load_tiles() __banked {
    ui_load_frame_tiles(frame_image, BANK(frame_image));
    ui_load_cursor_tile(cursor_image, BANK(cursor_image));

    set_bkg_data(ui_while_tile, 1, ui_white);
    set_bkg_data(ui_black_tile, 1, ui_black);
}

void ui_draw_frame(UBYTE x, UBYTE y, UBYTE width, UBYTE height) __banked {
    set_win_tile_xy (x,         y,                                 ui_frame_tl_tiles);
    fill_win_rect   (x + 1,     y,              width - 1, 1,      ui_frame_t_tiles );   // top
    set_win_tile_xy (x + width, y,                                 ui_frame_tr_tiles);
    fill_win_rect   (x,         y + 1,          1,         height, ui_frame_l_tiles );   // left
    fill_win_rect   (x + width, y + 1,          1,         height, ui_frame_r_tiles );   // right
    set_win_tile_xy (x,         y + height + 1,                    ui_frame_bl_tiles);
    fill_win_rect   (x + 1,     y + height + 1, width - 1, 1,      ui_frame_b_tiles );   // bottom
    set_win_tile_xy (x + width, y + height + 1,                    ui_frame_br_tiles);
    fill_win_rect   (x + 1,     y + 1,          width - 1, height, ui_frame_bg_tiles);  // background
}

static void ui_draw_text_buffer_char() {
    if ((text_ff_joypad) && (INPUT_A_OR_B_PRESSED)) text_ff = TRUE;

    if ((!text_ff) && (text_wait != 0)) {
        text_wait--;
        return;
    }

    if (ui_text_ptr == 0) {
        // reset to first line
        ui_line_no = 0;
        // current char pointer
        ui_text_ptr = ui_text_data;
        // VRAM destination
        ui_dest_base = GetWinAddr() + 32 + 1; // current width of window in tiles
        // text width
        ui_text_width = 18;
        // with and initial pos correction
        if (avatar_enabled) { 
            ui_text_width -= AVATAR_WIDTH;
            ui_dest_base += AVATAR_WIDTH;
        }
        if (menu_enabled) {
            ui_text_width -= SELECTOR_WIDTH;
            ui_dest_base += SELECTOR_WIDTH;
        }
        // initialize current pointer with corrected base value
        ui_dest_ptr = ui_dest_base;
        // character counter
        ui_width_left = ui_text_width;
        // tileno destination
        ui_tile_no = TEXT_BUFFER_START;  
        if (avatar_enabled) {
            ui_tile_no += 4;
        }    
    }

    switch (*ui_text_ptr) {
        case 0x00:
            ui_text_ptr = 0; 
            text_drawn = TRUE;
            return;
        case '\n':
            ui_line_no++;
            if (menu_enabled && menu_layout == MENU_LAYOUT_2_COLUMN && ui_line_no == 4) {
                ui_dest_base = GetWinAddr() + 32 + 1 + 9;
                ui_dest_ptr = ui_dest_base;
            } else {
                ui_dest_ptr = ui_dest_base += 32;
            }
            break; 
        case 0x10:
            current_text_speed = 0;
            break;
        case 0x11:
            current_text_speed = 1;
            break;
        case 0x12:
            current_text_speed = 3;
            break;
        case 0x13:
            current_text_speed = 7;
            break;
        case 0x14:
            current_text_speed = 0x0f;
            break;
        case 0x15:
            current_text_speed = 0x1f;
            break;
        default:
            SetBankedBkgData(ui_tile_no, 1, (UBYTE *)font_image_ptr.ptr + ((UWORD)(*ui_text_ptr - 32) << 4), font_image_ptr.bank);
            SetTile(ui_dest_ptr++, ui_tile_no);
            ui_tile_no++;
            break;
    }
    ui_text_ptr++;
}

static const UBYTE time_masks[] = {0x00, 0x00, 0x00, 0x01, 0x03, 0x07}; 

void ui_update() __nonbanked {
    UBYTE interval, is_moving = FALSE;

    if (game_time & time_masks[win_speed]) return;

    interval = (win_speed == 1) ? 2 : 1;

    // y should always move first
    if (win_pos_y != win_dest_pos_y) {
        // move window up/down
        if (win_pos_y < win_dest_pos_y) win_pos_y += interval; else win_pos_y -= interval;
        is_moving = TRUE;
    }

    if (win_pos_x != win_dest_pos_x) {
        // move window left/right
        if (win_pos_x < win_dest_pos_x) win_pos_x += interval; else win_pos_x -= interval;
        is_moving = TRUE;
    }

    // don't draw text while moving
    if (is_moving) return;
    // all drawn - nothing to do
    if (text_drawn) return;
    // too fast - wait
    if ((!INPUT_A_OR_B_PRESSED) && game_time & current_text_speed) return;
    // render next char
    do {
        ui_draw_text_buffer_char();
    } while (((text_ff) || (current_text_speed == 0)) && (!text_drawn));
}

static void ui_draw_menu_cursor() {
    UBYTE x = (avatar_enabled) ? 3 : 1;
    if (menu_layout == MENU_LAYOUT_2_COLUMN) {
        UBYTE height = MIN(4, menu_item_count);
        fill_win_rect(x, 1, 1, height, ui_bg_tile);
        fill_win_rect(9, 1, 1, height, ui_bg_tile);
        if (menu_index >= 4) x = 9;
        set_win_tile_xy(x, (menu_index%4) + 1, ui_cursor_tile);
    } else {
        fill_win_rect(x, 1, 1, menu_item_count, ui_bg_tile);
        set_win_tile_xy(x, menu_index + 1, ui_cursor_tile);
    }
}

UBYTE ui_run_menu() __banked {
    // no menu items
    if (menu_item_count == 0) return 0;
    // run menu
    menu_index = 0;
    ui_draw_menu_cursor();
    while (1) {
        input_update();
        ui_update();
        
        toggle_shadow_OAM();
        actors_update();
        projectiles_render();
        activate_shadow_OAM();

        game_time++;
        wait_vbl_done();

        if (INPUT_UP_PRESSED) {
            if (menu_index != 0) menu_index--;
        } else if (INPUT_DOWN_PRESSED) {
            if (menu_index != menu_item_count - 1) menu_index++;
        } else if (INPUT_LEFT_PRESSED) {
            if (menu_layout == MENU_LAYOUT_2_COLUMN) {
                menu_index = MAX(menu_index - 4, 0);
            } else {
                menu_index = 0;
            }
        } else if (INPUT_RIGHT_PRESSED) {
            if (menu_layout == MENU_LAYOUT_2_COLUMN) {
                menu_index = MIN(menu_index + 4, menu_item_count - 1);
            } else {
                menu_index = menu_item_count - 1;
            }
        } else if (INPUT_A_PRESSED) {
            return ((menu_cancel_on_last_option) && (menu_index == menu_item_count - 1)) ? 0 : menu_index + 1;
        } else if ((INPUT_B_PRESSED) && (menu_cancel_on_b))  {
            return 0;
        } else {
            continue;
        }

        ui_draw_menu_cursor();
    };
}

void ui_run_modal(UBYTE wait_flags) __banked {
    UBYTE fail;
    do {
        fail = 0;
    
        if (wait_flags & UI_WAIT_WINDOW)
            if ((win_pos_x != win_dest_pos_x) || (win_pos_y != win_dest_pos_y)) fail = 1;
        if (wait_flags & UI_WAIT_TEXT)
            if (!text_drawn) fail = 1;
        if (wait_flags & UI_WAIT_BTN_A)
            if (!INPUT_A_PRESSED) fail = 1;
        if (wait_flags & UI_WAIT_BTN_B)
            if (!INPUT_B_PRESSED) fail = 1;
        if (wait_flags & UI_WAIT_BTN_ANY)
            if (!INPUT_ANY_PRESSED) fail = 1;

        if (!fail) return;
        
        ui_update();

        toggle_shadow_OAM();
        actors_update();
        projectiles_render();
        activate_shadow_OAM();

        game_time++;
        wait_vbl_done();
        input_update();
    } while (fail);    
}

void ui_draw_avatar(spritesheet_t *avatar, UBYTE avatar_bank) __banked {
    UBYTE *avatar_ui_ptr = GetWinAddr() + 32 + 1;
    SetBankedBkgData(TEXT_BUFFER_START, AVATAR_TILE_SIZE, avatar->tiles, avatar_bank);
    set_win_tiles(1, 1, 2, 2, avatar_tiles);
}
