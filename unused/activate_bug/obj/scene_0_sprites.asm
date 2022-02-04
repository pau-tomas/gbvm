;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Mac OS X x86_64)
;--------------------------------------------------------
	.module scene_0_sprites
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_0_sprites
	.globl b___func_scene_0_sprites
	.globl ___func_scene_0_sprites
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
;data/src/data/scene_0_sprites.c:10: BANKREF(scene_0_sprites)
;	---------------------------------
; Function __func_scene_0_sprites
; ---------------------------------
	b___func_scene_0_sprites	= 255
___func_scene_0_sprites::
	.local b___func_scene_0_sprites 
	___bank_scene_0_sprites = b___func_scene_0_sprites 
	.globl ___bank_scene_0_sprites 
	.area _CODE_255
_scene_0_sprites:
	.byte ___bank_spritesheet_1
	.dw _spritesheet_1
	.byte ___bank_spritesheet_2
	.dw _spritesheet_2
	.area _INITIALIZER
	.area _CABS (ABS)
