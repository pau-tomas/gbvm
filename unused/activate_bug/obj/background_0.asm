;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Mac OS X x86_64)
;--------------------------------------------------------
	.module background_0
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _background_0
	.globl b___func_background_0
	.globl ___func_background_0
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
;data/src/data/background_0.c:9: BANKREF(background_0)
;	---------------------------------
; Function __func_background_0
; ---------------------------------
	b___func_background_0	= 255
___func_background_0::
	.local b___func_background_0 
	___bank_background_0 = b___func_background_0 
	.globl ___bank_background_0 
	.area _CODE_255
_background_0:
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.byte ___bank_tileset_0
	.dw _tileset_0
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_tilemap_0
	.dw _tilemap_0
	.db #0x00	; 0
	.dw #0x0000
	.area _INITIALIZER
	.area _CABS (ABS)
