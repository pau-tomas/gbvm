#pragma bank 255

#include <gbdk/platform.h>

#include "vm.h"
#include "ui.h"
#include "scroll.h"

#include <gbs_types.h>
#include <system.h>

// load tileset from SCENE into the second VRAM page from base_tile
void load_cgb_tileset(SCRIPT_CTX * THIS) OLDCALL BANKED {
    UBYTE base_tile = *(int16_t*)VM_REF_TO_PTR(FN_ARG2);
    UBYTE bank = *(int16_t*)VM_REF_TO_PTR(FN_ARG1);
    const background_t * background = *(void**)VM_REF_TO_PTR(FN_ARG0);
    far_ptr_t tileset;
#ifdef CGB
    if (_is_CGB) {
        ReadBankedFarPtr(&tileset, (void *)&(background->tileset), bank);
        if (tileset.bank) {
            VBK_REG = 1;
            UWORD n_tiles = ReadBankedUWORD(&((tileset_t *)(tileset.ptr))->n_tiles, tileset.bank);
            SetBankedBkgData(base_tile, n_tiles, ((tileset_t *)(tileset.ptr))->tiles, tileset.bank);
            VBK_REG = 0;
        }
    }
#endif
}

// set tilemap to the overlay, using the tileset loaded to the secont VRAM page
void overlay_cgb_set_map(SCRIPT_CTX * THIS) OLDCALL BANKED {
    far_ptr_t tilemap;
    UBYTE bank = *(int16_t*)VM_REF_TO_PTR(FN_ARG3);
    const background_t * background = *(void**)VM_REF_TO_PTR(FN_ARG2);
    UBYTE y = *(int16_t*)VM_REF_TO_PTR(FN_ARG1);
    UBYTE x = *(int16_t*)VM_REF_TO_PTR(FN_ARG0);
    UBYTE w = ReadBankedUBYTE((void *)&(background->width), bank);
    UBYTE h = ReadBankedUBYTE((void *)&(background->height), bank);
#ifdef CGB
    if (_is_CGB) {
        ReadBankedFarPtr(&tilemap, (void *)&(background->cgb_tilemap_attr), bank);
        if (tilemap.bank) {
            VBK_REG = 1;
            _map_tile_offset = 0b00001000;  // point to vram bank 1
            SetBankedWinTiles(x, y, w, h, tilemap.ptr, tilemap.bank);
            VBK_REG = 0;
        }
    }
#endif
    _map_tile_offset = *(int16_t*)VM_REF_TO_PTR(FN_ARG4);
    ReadBankedFarPtr(&tilemap, (void *)&(background->tilemap), bank);
    SetBankedWinTiles(x, y, w, h, tilemap.ptr, tilemap.bank);
    _map_tile_offset = 0;
}

extern UBYTE _submap_tile_offset;
void set_xy_win_submap(const UBYTE * source, UBYTE bank, UBYTE width, UBYTE x, UBYTE y, UBYTE w, UBYTE h) OLDCALL;

// set 2x2 submap (game item) to the overlay, using the tileset loaded to the secont VRAM page
void overlay_cgb_display_item(SCRIPT_CTX * THIS) OLDCALL BANKED {
    far_ptr_t tilemap;
    UBYTE bank = *(int16_t*)VM_REF_TO_PTR(FN_ARG4);
    const background_t * background = *(void**)VM_REF_TO_PTR(FN_ARG3);
    UBYTE y = *(int16_t*)VM_REF_TO_PTR(FN_ARG2);
    UBYTE x = *(int16_t*)VM_REF_TO_PTR(FN_ARG1);

    UBYTE n = *(int16_t*)VM_REF_TO_PTR(FN_ARG0);
    UWORD offset = ((UWORD)(n >> 4) << 5) + ((UWORD)(n & 0x0f) << 1);

#ifdef CGB
    if (_is_CGB) {
        ReadBankedFarPtr(&tilemap, (void *)&(background->cgb_tilemap_attr), bank);
        VBK_REG = 1;
        _submap_tile_offset = 0b00001000;  // point to vram bank 1

        set_xy_win_submap((UBYTE *)tilemap.ptr + offset, tilemap.bank, ReadBankedUBYTE((void *)&(background->width), bank), x, y, 2, 2);
        VBK_REG = 0;
    }
#endif
    _submap_tile_offset = *(int16_t*)VM_REF_TO_PTR(FN_ARG5);
    ReadBankedFarPtr(&tilemap, (void *)&(background->tilemap), bank);
    set_xy_win_submap((UBYTE *)tilemap.ptr + offset, tilemap.bank, ReadBankedUBYTE((void *)&(background->width), bank), x, y, 2, 2);
    _submap_tile_offset = 0;
}

// mask tiles on the overlay using the flag variable (0 = mask, 1 = keep tile)
void overlay_cgb_mask_tiles(SCRIPT_CTX * THIS) OLDCALL BANKED {
    UBYTE y = *(int16_t*)VM_REF_TO_PTR(FN_ARG2);
    UBYTE x = *(int16_t*)VM_REF_TO_PTR(FN_ARG1);
    UWORD v = *(uint16_t*)VM_REF_TO_PTR(FN_ARG0);

    UBYTE * addr = GetWinAddr() + (y << 5) + x;
    for (UBYTE i = 0; i != 16; i++, v >>= 1, addr++) {
        if (!(v & 0x01)) {
#ifdef CGB
            if (_is_CGB) {
                VBK_REG = 1;
                SetTile(addr, overlay_priority | (UI_PALETTE & 0x07u));
                VBK_REG = 0;
            }
#endif
            SetTile(addr, ui_while_tile);
        }
    }
}
