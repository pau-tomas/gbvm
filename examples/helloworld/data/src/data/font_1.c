#pragma bank 255
// Font: gbs-mono.png
  
#include "gbs_types.h"

static const UBYTE font_1_table[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
    0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,
    0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F,
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F,
    0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F,
    0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F,
    0x60, 0x5F, 0x0C, 0x61, 0x62, 0x63, 0x64, 0x65, 0x3E, 0x66, 0x67, 0x68, 0x69, 0x5F, 0x6A, 0x5F,
    0x5F, 0x6B, 0x6C, 0x6D, 0x02, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x67, 0x73, 0x74, 0x5F, 0x6A, 0x75,
    0x5F, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0x81, 0x5F, 0x82, 0x83,
    0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D, 0x84, 0x8E, 0x5F, 0x5F, 0x5F, 0x8F,
    0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B, 0x9C, 0x9D, 0x9E, 0x9F,
    0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0x58, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE,
    0xAF, 0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0x9C, 0x9D, 0x9E, 0x9F,
    0xBB, 0xBC, 0xBD, 0xBE, 0xBF, 0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA
};

static const UBYTE font_1_bitmaps[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x6C, 0x6C, 0x24, 0x24, 0x48, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x24, 0x24, 0x7E, 0x7E, 0x24, 0x24, 0x24, 0x24, 0x7E, 0x7E, 0x24, 0x24, 0x00, 0x00,
    0x10, 0x10, 0x38, 0x38, 0x54, 0x54, 0x50, 0x50, 0x38, 0x38, 0x14, 0x14, 0x54, 0x54, 0x38, 0x38,
    0x00, 0x00, 0x00, 0x00, 0x24, 0x24, 0x08, 0x08, 0x10, 0x10, 0x24, 0x24, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x30, 0x30, 0x48, 0x48, 0x50, 0x50, 0x20, 0x20, 0x54, 0x54, 0x48, 0x48, 0x34, 0x34,
    0x00, 0x00, 0x18, 0x18, 0x08, 0x08, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x08, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x08, 0x08, 0x00, 0x00,
    0x00, 0x00, 0x10, 0x10, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x54, 0x54, 0x38, 0x38, 0x54, 0x54, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x7C, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x60, 0x20, 0x20, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x02, 0x02, 0x04, 0x04, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x62, 0x62, 0x52, 0x52, 0x4A, 0x4A, 0x46, 0x46, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x18, 0x18, 0x28, 0x28, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x02, 0x02, 0x3C, 0x3C, 0x40, 0x40, 0x7E, 0x7E, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x02, 0x02, 0x0C, 0x0C, 0x02, 0x02, 0x02, 0x02, 0x7E, 0x7E, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x40, 0x40, 0x48, 0x48, 0x7E, 0x7E, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00,
    0x00, 0x00, 0x7E, 0x7E, 0x40, 0x40, 0x7C, 0x7C, 0x02, 0x02, 0x02, 0x02, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x40, 0x40, 0x7C, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x7E, 0x7E, 0x02, 0x02, 0x04, 0x04, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3E, 0x3E, 0x02, 0x02, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00,
    0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x08, 0x08, 0x10, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x30, 0x30, 0x40, 0x40, 0x30, 0x30, 0x0C, 0x0C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x7C, 0x00, 0x00, 0x7C, 0x7C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x60, 0x60, 0x18, 0x18, 0x04, 0x04, 0x18, 0x18, 0x60, 0x60, 0x00, 0x00,
    0x00, 0x00, 0x30, 0x30, 0x48, 0x48, 0x08, 0x08, 0x30, 0x30, 0x00, 0x00, 0x20, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x1C, 0x1C, 0x22, 0x22, 0x4D, 0x4D, 0x55, 0x55, 0x55, 0x55, 0x2E, 0x2E, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x42, 0x42, 0x7C, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x40, 0x40, 0x40, 0x40, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x7E, 0x7E, 0x40, 0x40, 0x7C, 0x7C, 0x40, 0x40, 0x40, 0x40, 0x7E, 0x7E, 0x00, 0x00,
    0x00, 0x00, 0x7E, 0x7E, 0x40, 0x40, 0x40, 0x40, 0x7C, 0x7C, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x40, 0x40, 0x4E, 0x4E, 0x42, 0x42, 0x3E, 0x3E, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x60, 0x60, 0x00, 0x00,
    0x00, 0x00, 0x44, 0x44, 0x48, 0x48, 0x50, 0x50, 0x70, 0x70, 0x48, 0x48, 0x44, 0x44, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x7E, 0x7E, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x42, 0x66, 0x66, 0x5A, 0x5A, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x42, 0x62, 0x62, 0x52, 0x52, 0x4A, 0x4A, 0x46, 0x46, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x7C, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x4A, 0x4A, 0x44, 0x44, 0x3A, 0x3A, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x3E, 0x3E, 0x40, 0x40, 0x3C, 0x3C, 0x02, 0x02, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x28, 0x28, 0x28, 0x28, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x5A, 0x5A, 0x66, 0x66, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x42, 0x24, 0x24, 0x18, 0x18, 0x18, 0x18, 0x24, 0x24, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x7C, 0x7C, 0x04, 0x04, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x18, 0x18, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x18, 0x18, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x20, 0x20, 0x10, 0x10, 0x08, 0x08, 0x04, 0x04, 0x02, 0x02, 0x00, 0x00,
    0x00, 0x00, 0x18, 0x18, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x18, 0x18, 0x00, 0x00,
    0x00, 0x00, 0x10, 0x10, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x78, 0x78, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x78, 0x78, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x04, 0x04, 0x3C, 0x3C, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x7C, 0x7C, 0x40, 0x40, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x38, 0x38, 0x40, 0x40, 0x40, 0x40, 0x78, 0x78, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x44, 0x44, 0x3C, 0x3C, 0x04, 0x04, 0x78, 0x78,
    0x00, 0x00, 0x40, 0x40, 0x78, 0x78, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00,
    0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x30, 0x30,
    0x00, 0x00, 0x40, 0x40, 0x44, 0x44, 0x48, 0x48, 0x70, 0x70, 0x48, 0x48, 0x44, 0x44, 0x00, 0x00,
    0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x6C, 0x6C, 0x54, 0x54, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x58, 0x58, 0x64, 0x64, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 0x38, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x78, 0x78, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x78, 0x78, 0x40, 0x40,
    0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x3C, 0x3C, 0x04, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x58, 0x58, 0x64, 0x64, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x40, 0x40, 0x38, 0x38, 0x04, 0x04, 0x78, 0x78, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x40, 0x40, 0x78, 0x78, 0x40, 0x40, 0x40, 0x40, 0x38, 0x38, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x28, 0x28, 0x28, 0x28, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x54, 0x54, 0x6C, 0x6C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x28, 0x28, 0x44, 0x44, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x60, 0x60,
    0x00, 0x00, 0x00, 0x00, 0x7C, 0x7C, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x08, 0x08, 0x10, 0x10, 0x10, 0x10, 0x20, 0x20, 0x10, 0x10, 0x10, 0x10, 0x08, 0x08,
    0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x00, 0x00, 0x10, 0x10, 0x08, 0x08, 0x08, 0x08, 0x04, 0x04, 0x08, 0x08, 0x08, 0x08, 0x10, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x32, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00,
    0x55, 0x55, 0xAA, 0xAA, 0x55, 0x55, 0xAA, 0xAA, 0x55, 0x55, 0xAA, 0xAA, 0x55, 0x55, 0xAA, 0xAA,
    0x00, 0x00, 0x38, 0x38, 0x40, 0x40, 0x70, 0x70, 0x70, 0x70, 0x40, 0x40, 0x38, 0x38, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x10, 0x10, 0x38, 0x38, 0x10, 0x10, 0x60, 0x60, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x6C, 0x24, 0x24, 0x48, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x54, 0x54, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x70, 0x70, 0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x70, 0x70, 0x20, 0x20, 0x70, 0x70, 0x20, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x48, 0x48, 0x10, 0x10, 0x20, 0x20, 0x4A, 0x4A, 0x00, 0x00, 0x00, 0x00,
    0x28, 0x28, 0x10, 0x10, 0x3C, 0x3C, 0x40, 0x40, 0x38, 0x38, 0x04, 0x04, 0x78, 0x78, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x10, 0x10, 0x08, 0x08, 0x00, 0x00,
    0x00, 0x00, 0x3E, 0x3E, 0x48, 0x48, 0x4E, 0x4E, 0x48, 0x48, 0x48, 0x48, 0x3E, 0x3E, 0x00, 0x00,
    0x28, 0x28, 0x10, 0x10, 0x7C, 0x7C, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x06, 0x06, 0x04, 0x04, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x60, 0x60, 0x20, 0x20, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x36, 0x36, 0x24, 0x24, 0x12, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x3C, 0x3C, 0x3C, 0x3C, 0x18, 0x18, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x7A, 0x7A, 0x2E, 0x2E, 0x2A, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x10, 0x10, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x4A, 0x4A, 0x4C, 0x4C, 0x3E, 0x3E, 0x00, 0x00,
    0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x10, 0x10, 0x3C, 0x3C, 0x50, 0x50, 0x50, 0x50, 0x50, 0x50, 0x3C, 0x3C, 0x10, 0x10,
    0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x40, 0x40, 0xF0, 0xF0, 0x40, 0x40, 0x7C, 0x7C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x44, 0x44, 0x38, 0x38, 0x28, 0x28, 0x38, 0x38, 0x44, 0x44, 0x00, 0x00,
    0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x7C, 0x7C, 0x10, 0x10, 0x7C, 0x7C, 0x10, 0x10, 0x00, 0x00,
    0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x1C, 0x1C, 0x20, 0x20, 0x78, 0x78, 0x44, 0x44, 0x38, 0x38, 0x08, 0x08, 0x70, 0x70, 0x00, 0x00,
    0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x3C, 0x3C, 0x42, 0x42, 0x99, 0x99, 0xA1, 0xA1, 0xA1, 0xA1, 0x99, 0x99, 0x42, 0x42, 0x3C, 0x3C,
    0x38, 0x38, 0x48, 0x48, 0x58, 0x58, 0x68, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x14, 0x14, 0x28, 0x28, 0x50, 0x50, 0x28, 0x28, 0x14, 0x14, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x3C, 0x3C, 0x42, 0x42, 0xB9, 0xB9, 0xA5, 0xA5, 0xB9, 0xB9, 0xA5, 0xA5, 0x42, 0x42, 0x3C, 0x3C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x30, 0x30, 0x48, 0x48, 0x48, 0x48, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x38, 0x38, 0x10, 0x10, 0x00, 0x00, 0x38, 0x38, 0x00, 0x00,
    0x30, 0x30, 0x48, 0x48, 0x10, 0x10, 0x20, 0x20, 0x78, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x70, 0x70, 0x08, 0x08, 0x38, 0x38, 0x08, 0x08, 0x70, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x04, 0x04, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x48, 0x48, 0x48, 0x48, 0x48, 0x48, 0x74, 0x74, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x3A, 0x3A, 0x7A, 0x7A, 0x7A, 0x7A, 0x3A, 0x3A, 0x0A, 0x0A, 0x0A, 0x0A, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x04, 0x04, 0x08, 0x08,
    0x00, 0x00, 0x60, 0x60, 0x20, 0x20, 0x20, 0x20, 0x70, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x28, 0x28, 0x14, 0x14, 0x0A, 0x0A, 0x14, 0x14, 0x28, 0x28, 0x00, 0x00,
    0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x30, 0x30, 0x40, 0x40, 0x48, 0x48, 0x30, 0x30, 0x00, 0x00,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x00, 0x00,
    0x04, 0x04, 0x08, 0x08, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x00, 0x00,
    0x18, 0x18, 0x24, 0x24, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x00, 0x00,
    0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x00, 0x00,
    0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x00, 0x00,
    0x00, 0x00, 0x1E, 0x1E, 0x18, 0x18, 0x28, 0x28, 0x3E, 0x3E, 0x48, 0x48, 0x4E, 0x4E, 0x00, 0x00,
    0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x40, 0x40, 0x40, 0x40, 0x42, 0x42, 0x3C, 0x3C, 0x08, 0x08,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x7E, 0x7E, 0x40, 0x40, 0x7C, 0x7C, 0x40, 0x40, 0x7E, 0x7E,
    0x04, 0x04, 0x08, 0x08, 0x00, 0x00, 0x7E, 0x7E, 0x40, 0x40, 0x7C, 0x7C, 0x40, 0x40, 0x7E, 0x7E,
    0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x7E, 0x7E, 0x40, 0x40, 0x7C, 0x7C, 0x40, 0x40, 0x7E, 0x7E,
    0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x7E, 0x7E, 0x40, 0x40, 0x7C, 0x7C, 0x40, 0x40, 0x7E, 0x7E,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x08, 0x08, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x10, 0x10, 0x28, 0x28, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x00, 0x00, 0x7C, 0x7C, 0x42, 0x42, 0x42, 0x42, 0xF2, 0xF2, 0x42, 0x42, 0x7C, 0x7C, 0x00, 0x00,
    0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x62, 0x62, 0x52, 0x52, 0x4A, 0x4A, 0x46, 0x46, 0x00, 0x00,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x04, 0x04, 0x08, 0x08, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x18, 0x18, 0x24, 0x24, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x3C, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x3E, 0x3E, 0x46, 0x46, 0x4A, 0x4A, 0x52, 0x52, 0x62, 0x62, 0x7C, 0x7C, 0x00, 0x00,
    0x20, 0x20, 0x10, 0x10, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x04, 0x04, 0x08, 0x08, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x18, 0x18, 0x24, 0x24, 0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x3C, 0x00, 0x00,
    0x04, 0x04, 0x08, 0x08, 0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x40, 0x70, 0x70, 0x48, 0x48, 0x48, 0x48, 0x70, 0x70, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x78, 0x78, 0x44, 0x44, 0x48, 0x48, 0x44, 0x44, 0x44, 0x44, 0x58, 0x58, 0x00, 0x00,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x04, 0x04, 0x08, 0x08, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x18, 0x18, 0x24, 0x24, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x3C, 0x3C, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x4A, 0x4A, 0x5C, 0x5C, 0x2E, 0x2E, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x3C, 0x3C, 0x08, 0x08,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x7C, 0x7C, 0x40, 0x40, 0x3C, 0x3C,
    0x04, 0x04, 0x08, 0x08, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x7C, 0x7C, 0x40, 0x40, 0x3C, 0x3C,
    0x18, 0x18, 0x24, 0x24, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x7C, 0x7C, 0x40, 0x40, 0x3C, 0x3C,
    0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x7C, 0x7C, 0x40, 0x40, 0x3C, 0x3C,
    0x00, 0x00, 0x0A, 0x0A, 0x04, 0x04, 0x3A, 0x3A, 0x44, 0x44, 0x44, 0x44, 0x38, 0x38, 0x00, 0x00,
    0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x58, 0x58, 0x64, 0x64, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x44, 0x44, 0x38, 0x38, 0x00, 0x00,
    0x08, 0x08, 0x10, 0x10, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x44, 0x44, 0x38, 0x38, 0x00, 0x00,
    0x10, 0x10, 0x28, 0x28, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x44, 0x44, 0x38, 0x38, 0x00, 0x00,
    0x14, 0x14, 0x28, 0x28, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x44, 0x44, 0x38, 0x38, 0x00, 0x00,
    0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0x38, 0x38, 0x44, 0x44, 0x44, 0x44, 0x38, 0x38, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x7C, 0x7C, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3C, 0x3C, 0x4C, 0x4C, 0x54, 0x54, 0x64, 0x64, 0x78, 0x78, 0x00, 0x00,
    0x20, 0x20, 0x10, 0x10, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x08, 0x08, 0x10, 0x10, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x10, 0x10, 0x28, 0x28, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x4C, 0x4C, 0x34, 0x34, 0x00, 0x00,
    0x08, 0x08, 0x10, 0x10, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x60, 0x60,
    0x00, 0x00, 0x40, 0x40, 0x60, 0x60, 0x50, 0x50, 0x50, 0x50, 0x60, 0x60, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0x44, 0x44, 0x44, 0x44, 0x28, 0x28, 0x10, 0x10, 0x60, 0x60
};

const void __at(255) __bank_font_1;
const font_desc_t font_1 = {
    FONT_RECODE, 
    0xFF,
    font_1_table,
    NULL,
    font_1_bitmaps
};
