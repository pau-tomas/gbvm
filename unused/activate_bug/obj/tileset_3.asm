;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Mac OS X x86_64)
;--------------------------------------------------------
	.module tileset_3
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tileset_3
	.globl b___func_tileset_3
	.globl ___func_tileset_3
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
;data/src/data/tileset_3.c:7: BANKREF(tileset_3)
;	---------------------------------
; Function __func_tileset_3
; ---------------------------------
	b___func_tileset_3	= 255
___func_tileset_3::
	.local b___func_tileset_3 
	___bank_tileset_3 = b___func_tileset_3 
	.globl ___bank_tileset_3 
	.area _CODE_255
_tileset_3:
	.dw #0x0004
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0xfa	; 250
	.db #0xd6	; 214
	.db #0xfa	; 250
	.db #0xb6	; 182
	.db #0xfa	; 250
	.db #0x56	; 86	'V'
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x5f	; 95
	.db #0x6e	; 110	'n'
	.db #0x5f	; 95
	.db #0x6a	; 106	'j'
	.db #0x5f	; 95
	.db #0x6d	; 109	'm'
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.area _INITIALIZER
	.area _CABS (ABS)
