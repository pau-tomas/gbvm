;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Mac OS X x86_64)
;--------------------------------------------------------
	.module spritesheet_none
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spritesheet_none
	.globl _spritesheet_none_metasprites
	.globl _spritesheet_none_metasprite
	.globl ___bank_spritesheet_none
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
	.area _CODE_255
___bank_spritesheet_none	=	0x00ff
_spritesheet_none_metasprite:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_spritesheet_none_metasprites:
	.dw _spritesheet_none_metasprite
_spritesheet_none:
	.db #0x01	; 1
	.byte #0x00
	.byte #0x00
	.dw _spritesheet_none_metasprites
	.dw #0x0000
	.dw #0x0000
	.byte #0x00
	.byte #0x00
	.byte #0x00
	.byte #0x00
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.area _INITIALIZER
	.area _CABS (ABS)
