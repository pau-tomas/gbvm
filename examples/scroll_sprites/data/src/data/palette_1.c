#pragma bank 255

// Palette: 1

#include "gbs_types.h"

BANKREF(palette_1)

const struct palette_t palette_1 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(30, 30, 30), RGB(25, 29, 31), RGB(18, 26, 30), RGB(6, 19, 29)),
        CGB_PALETTE(RGB(18, 26, 30), RGB(15, 28, 11), RGB(10, 16, 9), RGB(6, 3, 10)),
        CGB_PALETTE(RGB(18, 26, 30), RGB(27, 16, 6), RGB(21, 4, 3), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(18, 26, 30), RGB(31, 31, 16), RGB(21, 4, 3), RGB(10, 16, 9)),
        CGB_PALETTE(RGB(31, 29, 25), RGB(27, 18, 9), RGB(21, 5, 4), RGB(6, 3, 10)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(27, 16, 27), RGB(16, 0, 20), RGB(7, 0, 1)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(22, 30, 17), RGB(10, 19, 15), RGB(4, 5, 10))
    }
};
