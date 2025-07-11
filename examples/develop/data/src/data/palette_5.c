#pragma bank 255

// Palette: 5

#include "gbs_types.h"

BANKREF(palette_5)

const struct palette_t palette_5 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(31, 2, 2), RGB(12, 20, 30), RGB(25, 1, 6), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 0, 31), RGB(5, 12, 30), RGB(14, 6, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 29, 1), RGB(31, 3, 17), RGB(24, 2, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(27, 16, 27), RGB(16, 0, 20), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(31, 2, 19), RGB(19, 19, 19), RGB(8, 8, 8), RGB(2, 2, 2)),
        CGB_PALETTE(RGB(31, 27, 22), RGB(15, 24, 15), RGB(13, 17, 8), RGB(1, 4, 9)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(22, 30, 17), RGB(10, 19, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 23), RGB(18, 25, 25), RGB(9, 13, 15), RGB(1, 4, 9))
    }
};
