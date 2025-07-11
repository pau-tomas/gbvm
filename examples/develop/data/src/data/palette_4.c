#pragma bank 255

// Palette: 4

#include "gbs_types.h"

BANKREF(palette_4)

const struct palette_t palette_4 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(25, 29, 31), RGB(27, 18, 9), RGB(21, 5, 4), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(30, 30, 30), RGB(31, 27, 25), RGB(25, 19, 27), RGB(25, 29, 31)),
        CGB_PALETTE(RGB(30, 30, 30), RGB(25, 30, 28), RGB(16, 12, 19), RGB(13, 8, 11)),
        CGB_PALETTE(RGB(25, 29, 31), RGB(22, 30, 17), RGB(11, 15, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 29, 25), RGB(27, 18, 9), RGB(21, 5, 4), RGB(6, 3, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(22, 30, 17), RGB(10, 19, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9))
    }
};
