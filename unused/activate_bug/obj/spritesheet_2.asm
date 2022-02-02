;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Mac OS X x86_64)
;--------------------------------------------------------
	.module spritesheet_2
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spritesheet_2
	.globl _spritesheet_2_animations_lookup
	.globl _spritesheet_2_animations
	.globl _spritesheet_2_metasprites
	.globl _spritesheet_2_metasprite_0
	.globl b___func_spritesheet_2
	.globl ___func_spritesheet_2
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
;data/src/data/spritesheet_2.c:7: BANKREF(spritesheet_2)
;	---------------------------------
; Function __func_spritesheet_2
; ---------------------------------
	b___func_spritesheet_2	= 255
___func_spritesheet_2::
	.local b___func_spritesheet_2 
	___bank_spritesheet_2 = b___func_spritesheet_2 
	.globl ___bank_spritesheet_2 
	.area _CODE_255
_spritesheet_2_metasprite_0:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_spritesheet_2_metasprites:
	.dw _spritesheet_2_metasprite_0
_spritesheet_2_animations:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_spritesheet_2_animations_lookup:
	.dw #0x0000
_spritesheet_2:
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _spritesheet_2_metasprites
	.dw _spritesheet_2_animations
	.dw _spritesheet_2_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.byte ___bank_tileset_3
	.dw _tileset_3
	.db #0x00	; 0
	.dw #0x0000
	.area _INITIALIZER
	.area _CABS (ABS)
