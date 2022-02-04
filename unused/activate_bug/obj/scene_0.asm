;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Mac OS X x86_64)
;--------------------------------------------------------
	.module scene_0
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_0
	.globl b___func_scene_0
	.globl ___func_scene_0
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
;data/src/data/scene_0.c:15: BANKREF(scene_0)
;	---------------------------------
; Function __func_scene_0
; ---------------------------------
	b___func_scene_0	= 255
___func_scene_0::
	.local b___func_scene_0 
	___bank_scene_0 = b___func_scene_0 
	.globl ___bank_scene_0 
	.area _CODE_255
_scene_0:
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.byte ___bank_spritesheet_0
	.dw _spritesheet_0
	.byte ___bank_background_0
	.dw _background_0
	.byte ___bank_scene_0_collisions
	.dw _scene_0_collisions
	.byte ___bank_palette_0
	.dw _palette_0
	.byte ___bank_palette_1
	.dw _palette_1
	.byte ___bank_script_s0_init
	.dw _script_s0_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_0_sprites
	.dw _scene_0_sprites
	.byte ___bank_scene_0_actors
	.dw _scene_0_actors
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
