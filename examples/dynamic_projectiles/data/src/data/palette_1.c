#pragma bank 255

// Palette: 1

#include "gbs_types.h"

BANKREF(palette_1)

const struct palette_t palette_1 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_BLACK),
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(29, 31, 28), RGB(22, 30, 17), RGB(4, 5, 10))
    }
};
