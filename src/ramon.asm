;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (MINGW32)
; This file was generated Thu Sep 26 21:26:14 2013
;--------------------------------------------------------
	.module ramon
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ShowMenu
	.globl _Game
	.globl _GameOver
	.globl _MoveCamion
	.globl _MovePolicias
	.globl _MoveBolsa
	.globl _MovePlayer
	.globl _InitGame
	.globl _initPaleta
	.globl _InitMode1
	.globl _InitMode0
	.globl _SetCursor
	.globl _SetMode
	.globl _SetColor
	.globl _DrawTile
	.globl _PutSpriteMode0Trans
	.globl _PutSpriteMode0
	.globl _GetChar
	.globl _GetTime
	.globl _printf
	.globl _nGetChar
	.globl _char4
	.globl _char3
	.globl _aCamion
	.globl _aPoli3
	.globl _aPoli2
	.globl _aPoli1
	.globl _aBolsa
	.globl _aPlayer
	.globl _aBackgroundTiles
	.globl __eTileType
	.globl _globalTimer
	.globl _Palette
	.globl _SpritePuerta4
	.globl _SpritePuerta3
	.globl _SpritePuerta2
	.globl _SpritePuerta1
	.globl _SpriteCarretera
	.globl _SpriteCamion6
	.globl _SpriteCamion5
	.globl _SpriteCamion4
	.globl _SpriteCamion3
	.globl _SpriteCamion2
	.globl _SpriteCamion1
	.globl _SpriteLadron1_2
	.globl _SpriteLadron1_1
	.globl _SpriteBolsa
	.globl _SpritePoliF2
	.globl _SpritePoliF1
	.globl _SpritePlayerF2
	.globl _SpritePlayerF1
	.globl _SpriteLadrillo
	.globl _SpriteBanco
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_globalTimer::
	.ds 1
__eTileType::
	.ds 1
_aBackgroundTiles::
	.ds 400
_aPlayer::
	.ds 6
_aBolsa::
	.ds 4
_aPoli1::
	.ds 4
_aPoli2::
	.ds 4
_aPoli3::
	.ds 4
_aCamion::
	.ds 12
_char3::
	.ds 1
_char4::
	.ds 1
_nGetChar::
	.ds 1
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
	.area _CODE
;ramon.c:90: unsigned int GetTime()
;	---------------------------------
; Function GetTime
; ---------------------------------
_GetTime_start::
_GetTime:
;ramon.c:102: __endasm;
	CALL #0xBD0D ;KL TIME PLEASE
	PUSH HL
	POP DE
	LD HL, #_char3
	LD (HL), D
	LD HL, #_char4
	LD (HL), E
;ramon.c:104: nTime = (char3 << 8) + char4;
	ld	hl,#_char3 + 0
	ld	b, (hl)
	ld	c,#0x00
	ld	hl,#_char4 + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	a,c
	add	a, e
	ld	c,a
	ld	a,b
	adc	a, d
	ld	b,a
	ld	l, c
	ld	h, b
;ramon.c:106: return nTime;
	ret
_GetTime_end::
_SpriteBanco:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
_SpriteLadrillo:
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x03	;  3
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
_SpritePlayerF1:
	.db #0x01	;  1
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x80	; -128
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA2	; -94
	.db #0x51	;  81	'Q'
	.db #0xD1	; -47
	.db #0xE2	; -30
	.db #0xA2	; -94
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA2	; -94
	.db #0x44	;  68	'D'
	.db #0xCC	; -52
	.db #0xCC	; -52
	.db #0x88	; -120
	.db #0xCC	; -52
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xCC	; -52
	.db #0x88	; -120
	.db #0xCC	; -52
	.db #0xCC	; -52
	.db #0x44	;  68	'D'
	.db #0xA2	; -94
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x51	;  81	'Q'
	.db #0x00	;  0
	.db #0x44	;  68	'D'
	.db #0x88	; -120
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0x00	;  0
_SpritePlayerF2:
	.db #0x01	;  1
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x80	; -128
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA2	; -94
	.db #0x51	;  81	'Q'
	.db #0xD1	; -47
	.db #0xE2	; -30
	.db #0xA2	; -94
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA2	; -94
	.db #0x44	;  68	'D'
	.db #0xCC	; -52
	.db #0xCC	; -52
	.db #0x88	; -120
	.db #0xCC	; -52
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xCC	; -52
	.db #0x88	; -120
	.db #0xCC	; -52
	.db #0xCC	; -52
	.db #0x44	;  68	'D'
	.db #0xA2	; -94
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x51	;  81	'Q'
	.db #0x00	;  0
	.db #0x88	; -120
	.db #0x44	;  68	'D'
	.db #0x00	;  0
	.db #0x41	;  65	'A'
	.db #0x82	; -126
	.db #0x41	;  65	'A'
	.db #0x82	; -126
_SpritePoliF1:
	.db #0x12	;  18
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x21	;  33
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA3	; -93
	.db #0x16	;  22
	.db #0xB6	; -74
	.db #0x79	;  121	'y'
	.db #0x29	;  41
	.db #0x16	;  22
	.db #0x3C	;  60
	.db #0x3C	;  60
	.db #0x79	;  121	'y'
	.db #0x12	;  18
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x98	; -104
	.db #0x30	;  48	'0'
	.db #0x21	;  33
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x12	;  18
	.db #0xA3	; -93
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x03	;  3
	.db #0x03	;  3
	.db #0x53	;  83	'S'
	.db #0xA3	; -93
	.db #0x03	;  3
	.db #0xC3	; -61
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0xC3	; -61
_SpritePoliF2:
	.db #0x12	;  18
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x21	;  33
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA3	; -93
	.db #0x16	;  22
	.db #0xB6	; -74
	.db #0x79	;  121	'y'
	.db #0x29	;  41
	.db #0xB6	; -74
	.db #0x3C	;  60
	.db #0x3C	;  60
	.db #0x29	;  41
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x21	;  33
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x98	; -104
	.db #0x30	;  48	'0'
	.db #0x21	;  33
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x12	;  18
	.db #0x03	;  3
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x53	;  83	'S'
	.db #0x03	;  3
	.db #0xA3	; -93
	.db #0x53	;  83	'S'
	.db #0x03	;  3
	.db #0x92	; -110
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x61	;  97	'a'
_SpriteBolsa:
	.db #0x00	;  0
	.db #0x14	;  20
	.db #0x28	;  40
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x28	;  40
	.db #0x3C	;  60
	.db #0x00	;  0
	.db #0x14	;  20
	.db #0x79	;  121	'y'
	.db #0xB6	; -74
	.db #0x28	;  40
	.db #0x3C	;  60
	.db #0xA2	; -94
	.db #0x79	;  121	'y'
	.db #0x3C	;  60
	.db #0x3C	;  60
	.db #0xA2	; -94
	.db #0x3C	;  60
	.db #0x3C	;  60
	.db #0x3C	;  60
	.db #0x79	;  121	'y'
	.db #0xB6	; -74
	.db #0x3C	;  60
	.db #0x3C	;  60
	.db #0x28	;  40
	.db #0x79	;  121	'y'
	.db #0x3C	;  60
	.db #0x3C	;  60
	.db #0xA2	; -94
	.db #0x79	;  121	'y'
	.db #0x3C	;  60
	.db #0x14	;  20
	.db #0x79	;  121	'y'
	.db #0xB6	; -74
	.db #0x28	;  40
	.db #0x00	;  0
	.db #0x28	;  40
	.db #0x3C	;  60
	.db #0x00	;  0
_SpriteLadron1_1:
	.db #0x3F	;  63
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x3F	;  63
	.db #0x3F	;  63
	.db #0x84	; -124
	.db #0x48	;  72	'H'
	.db #0x3F	;  63
	.db #0x3F	;  63
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x3F	;  63
	.db #0x3F	;  63
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x3F	;  63
	.db #0x3F	;  63
	.db #0x6A	;  106	'j'
	.db #0x95	; -107
	.db #0x3F	;  63
	.db #0x3F	;  63
	.db #0x80	; -128
	.db #0x40	;  64
	.db #0x3F	;  63
	.db #0x6A	;  106	'j'
	.db #0x6A	;  106	'j'
	.db #0x95	; -107
	.db #0x95	; -107
	.db #0x3F	;  63
	.db #0x2A	;  42
	.db #0x40	;  64
	.db #0x3F	;  63
	.db #0x3F	;  63
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x95	; -107
	.db #0x6A	;  106	'j'
	.db #0x95	; -107
	.db #0x3F	;  63
	.db #0x3F	;  63
_SpriteLadron1_2:
	.db #0x0C	;  12
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x0C	;  12
	.db #0x0C	;  12
	.db #0x84	; -124
	.db #0x48	;  72	'H'
	.db #0x0C	;  12
	.db #0x0C	;  12
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x0C	;  12
	.db #0x0C	;  12
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x0C	;  12
	.db #0x0C	;  12
	.db #0x48	;  72	'H'
	.db #0x84	; -124
	.db #0x0C	;  12
	.db #0x0C	;  12
	.db #0x80	; -128
	.db #0x40	;  64
	.db #0x0C	;  12
	.db #0x48	;  72	'H'
	.db #0x48	;  72	'H'
	.db #0x84	; -124
	.db #0x84	; -124
	.db #0x0C	;  12
	.db #0x80	; -128
	.db #0x04	;  4
	.db #0x0C	;  12
	.db #0x48	;  72	'H'
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0x0C	;  12
	.db #0x0C	;  12
	.db #0x0C	;  12
	.db #0x48	;  72	'H'
	.db #0x84	; -124
_SpriteCamion1:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x00	;  0
	.db #0x51	;  81	'Q'
	.db #0xB2	; -78
	.db #0xF3	; -13
	.db #0x00	;  0
	.db #0xF3	; -13
	.db #0x30	;  48	'0'
	.db #0xF3	; -13
	.db #0x51	;  81	'Q'
	.db #0xB2	; -78
	.db #0x30	;  48	'0'
	.db #0xF3	; -13
	.db #0x51	;  81	'Q'
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0xF3	; -13
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xE2	; -30
	.db #0xF3	; -13
	.db #0x41	;  65	'A'
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x51	;  81	'Q'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
_SpriteCamion2:
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xC3	; -61
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xE3	; -29
	.db #0xC3	; -61
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xC3	; -61
	.db #0xD3	; -45
	.db #0xF3	; -13
	.db #0xE3	; -29
	.db #0xD3	; -45
	.db #0xF3	; -13
	.db #0xE3	; -29
	.db #0xC3	; -61
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xC3	; -61
	.db #0xD3	; -45
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xD3	; -45
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
_SpriteCamion3:
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0x82	; -126
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA3	; -93
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA3	; -93
	.db #0x53	;  83	'S'
_SpriteCamion4:
	.db #0xCE	; -50
	.db #0xD9	; -39
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xCE	; -50
	.db #0xD9	; -39
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xDB	; -37
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xDB	; -37
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xDB	; -37
	.db #0xF3	; -13
	.db #0xE7	; -25
	.db #0xDB	; -37
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0x00	;  0
	.db #0xCF	; -49
	.db #0xC3	; -61
	.db #0xC7	; -57
	.db #0x00	;  0
	.db #0xCF	; -49
	.db #0xC3	; -61
	.db #0xCF	; -49
	.db #0x00	;  0
	.db #0x45	;  69	'E'
	.db #0xCB	; -53
	.db #0x8A	; -118
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0xCF	; -49
	.db #0x00	;  0
_SpriteCamion5:
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xDB	; -37
	.db #0xF3	; -13
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
_SpriteCamion6:
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0xA3	; -93
	.db #0x53	;  83	'S'
	.db #0xF3	; -13
	.db #0xF3	; -13
	.db #0x46	;  70	'F'
	.db #0x89	; -119
	.db #0xF3	; -13
	.db #0xA3	; -93
	.db #0xCC	; -52
	.db #0xCC	; -52
	.db #0xF3	; -13
	.db #0xA3	; -93
	.db #0xCC	; -52
	.db #0xCC	; -52
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0xCF	; -49
	.db #0x45	;  69	'E'
	.db #0xCB	; -53
	.db #0xC3	; -61
	.db #0x8A	; -118
	.db #0x45	;  69	'E'
	.db #0xCB	; -53
	.db #0xC7	; -57
	.db #0x8A	; -118
	.db #0x00	;  0
	.db #0xCF	; -49
	.db #0xC7	; -57
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x45	;  69	'E'
	.db #0x8A	; -118
	.db #0x00	;  0
_SpriteCarretera:
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0xD4	; -44
	.db #0xFC	; -4
	.db #0xC0	; -64
	.db #0xC0	; -64
	.db #0xD4	; -44
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
	.db #0xFC	; -4
_SpritePuerta1:
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
_SpritePuerta2:
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0xC3	; -61
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
_SpritePuerta3:
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
_SpritePuerta4:
	.db #0x92	; -110
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
	.db #0x92	; -110
	.db #0x30	;  48	'0'
	.db #0x30	;  48	'0'
	.db #0x61	;  97	'a'
_Palette:
	.db #0x0D	; 13
	.db #0x1A	; 26
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x0B	; 11
	.db #0x12	; 18
	.db #0x19	; 25
	.db #0x16	; 22
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x0D	; 13
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x08	; 8
;ramon.c:112: char GetChar()
;	---------------------------------
; Function GetChar
; ---------------------------------
_GetChar_start::
_GetChar:
;ramon.c:121: __endasm;
	LD HL, #_nGetChar
	LD (HL), #0
	CALL #0xBB09 ;KM READ CHAR
	JP NC, _end_getchar
	LD (HL), A
	  _end_getchar:
;ramon.c:123: return nGetChar;
	ld	iy,#_nGetChar
	ld	l,0 (iy)
	ret
_GetChar_end::
;ramon.c:128: void PutSpriteMode0(unsigned char *pAddress, unsigned char nWidth, unsigned char nHeight, unsigned char *pSprite)
;	---------------------------------
; Function PutSpriteMode0
; ---------------------------------
_PutSpriteMode0_start::
_PutSpriteMode0:
	push	ix
	ld	ix,#0
	add	ix,sp
;ramon.c:159: __endasm;
	LD L, 4(IX)
	LD H, 5(IX)
	LD C, 6(IX)
	LD B, 7(IX)
	LD E, 8(IX)
	LD D, 9(IX)
	  _loop_alto:
	PUSH BC
	LD B,C
	PUSH HL
	  _loop_ancho:
	LD A,(DE)
	LD (HL),A
	INC DE
	INC HL
	DJNZ _loop_ancho
	POP HL
	LD A,H
	ADD #0x08
	LD H,A
	SUB #0xC0
	JP NC, _sig_linea
	LD BC, #0xC050
	ADD HL,BC
	  _sig_linea:
	POP BC
	DJNZ _loop_alto
	pop	ix
	ret
_PutSpriteMode0_end::
;ramon.c:163: void PutSpriteMode0Trans(unsigned char *pAddress, unsigned char nWidth, unsigned char nHeight, unsigned char *pSprite)
;	---------------------------------
; Function PutSpriteMode0Trans
; ---------------------------------
_PutSpriteMode0Trans_start::
_PutSpriteMode0Trans:
	push	ix
	ld	ix,#0
	add	ix,sp
;ramon.c:197: __endasm;
	LD L, 4(IX)
	LD H, 5(IX)
	LD C, 6(IX)
	LD B, 7(IX)
	LD E, 8(IX)
	LD D, 9(IX)
	_loop_alto2:
	PUSH BC
	LD B,C
	PUSH HL
	_loop_ancho2:
	LD A,(DE)
	CP #0
	JP Z, _notpaint
	LD (HL),A
	_notpaint:
	INC DE
	INC HL
	DJNZ _loop_ancho2
	POP HL
	LD A,H
	ADD #0x08
	LD H,A
	SUB #0xC0
	JP NC, _sig_linea2
	LD BC, #0xC050
	ADD HL,BC
	_sig_linea2:
	POP BC
	DJNZ _loop_alto2
	pop	ix
	ret
_PutSpriteMode0Trans_end::
;ramon.c:201: void DrawTile(unsigned char nTileX, unsigned char nTileY)
;	---------------------------------
; Function DrawTile
; ---------------------------------
_DrawTile_start::
_DrawTile:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;ramon.c:203: enum _eTileType eTileType = aBackgroundTiles[nTileX][nTileY];
	ld	c,4 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e,5 (ix)
	ld	a,c
	add	a, e
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	c,a
;ramon.c:205: unsigned int nY = nTileY * TILE_HEIGHT;
	push	de
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ex	(sp), hl
;ramon.c:206: unsigned int nX = nTileX * TILE_WIDTH;
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	-2 (ix),l
	ld	-1 (ix),h
;ramon.c:207: unsigned char *pScreen = (unsigned char *)0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 2);
	ld	d,-6 (ix)
	ld	b,-5 (ix)
	srl	b
	rr	d
	srl	b
	rr	d
	srl	b
	rr	d
	ld	e,d
	ld	d,b
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	d, l
	ld	a, h
	add	a,#0xC0
	ld	b,a
	ld	a,-6 (ix)
	and	a, #0x07
	rlca
	rlca
	rlca
	and	a,#0xF8
	ld	h,a
	ld	l,#0x00
	ld	a,d
	add	a, l
	ld	d,a
	ld	a,b
	adc	a, h
	ld	b,a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	srl	h
	rr	l
	ld	a,d
	add	a, l
	ld	d,a
	ld	a,b
	adc	a, h
	ld	-4 (ix), d
	ld	-3 (ix), a
;ramon.c:208: unsigned char *pSprite = (unsigned char *)SpriteLadrillo; // Fondo de acera
	ld	b,#<(_SpriteLadrillo)
	ld	e,#>(_SpriteLadrillo)
;ramon.c:210: switch(eTileType)
	ld	a,c
	sub	a, #0x01
	jp	C,00118$
	ld	a,#0x11
	sub	a, c
	jp	C,00118$
	ld	d,c
	dec	d
	push	de
	ld	e,d
	ld	d,#0x00
	ld	hl,#00133$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00133$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00107$
	jp	00114$
	jp	00115$
	jp	00116$
	jp	00117$
;ramon.c:213: case TileType_Camion1:
00101$:
;ramon.c:214: pSprite = (unsigned char *)SpriteCamion1;
	ld	b,#<(_SpriteCamion1)
	ld	e,#>(_SpriteCamion1)
;ramon.c:215: break;
	jr	00118$
;ramon.c:216: case TileType_Camion2:
00102$:
;ramon.c:217: pSprite = (unsigned char *)SpriteCamion2;
	ld	b,#<(_SpriteCamion2)
	ld	e,#>(_SpriteCamion2)
;ramon.c:218: break;
	jr	00118$
;ramon.c:219: case TileType_Camion3:
00103$:
;ramon.c:220: pSprite = (unsigned char *)SpriteCamion3;
	ld	b,#<(_SpriteCamion3)
	ld	e,#>(_SpriteCamion3)
;ramon.c:221: break;
	jr	00118$
;ramon.c:222: case TileType_Camion4:
00104$:
;ramon.c:223: pSprite = (unsigned char *)SpriteCamion4;
	ld	b,#<(_SpriteCamion4)
	ld	e,#>(_SpriteCamion4)
;ramon.c:224: break;
	jr	00118$
;ramon.c:225: case TileType_Camion5:
00105$:
;ramon.c:226: pSprite = (unsigned char *)SpriteCamion5;
	ld	b,#<(_SpriteCamion5)
	ld	e,#>(_SpriteCamion5)
;ramon.c:227: break;
	jr	00118$
;ramon.c:228: case TileType_Camion6:
00106$:
;ramon.c:229: pSprite = (unsigned char *)SpriteCamion6;
	ld	b,#<(_SpriteCamion6)
	ld	e,#>(_SpriteCamion6)
;ramon.c:230: break;
	jr	00118$
;ramon.c:231: case TileType_Carretera:
00107$:
;ramon.c:232: pSprite = (unsigned char *)SpriteCarretera;
	ld	b,#<(_SpriteCarretera)
	ld	e,#>(_SpriteCarretera)
;ramon.c:233: break;
	jr	00118$
;ramon.c:234: case TileType_Banco:
00108$:
;ramon.c:235: pSprite = (unsigned char *)SpriteBanco;
	ld	b,#<(_SpriteBanco)
	ld	e,#>(_SpriteBanco)
;ramon.c:236: break;
	jr	00118$
;ramon.c:237: case TileType_Player_f1:
00109$:
;ramon.c:238: pSprite = (unsigned char *)SpritePlayerF1;
	ld	b,#<(_SpritePlayerF1)
	ld	e,#>(_SpritePlayerF1)
;ramon.c:239: break;
	jr	00118$
;ramon.c:240: case TileType_Player_f2:
00110$:
;ramon.c:241: pSprite = (unsigned char *)SpritePlayerF2;
	ld	b,#<(_SpritePlayerF2)
	ld	e,#>(_SpritePlayerF2)
;ramon.c:242: break;
	jr	00118$
;ramon.c:243: case TileType_Poli_f1:
00111$:
;ramon.c:244: pSprite = (unsigned char *)SpritePoliF1;
	ld	b,#<(_SpritePoliF1)
	ld	e,#>(_SpritePoliF1)
;ramon.c:245: break;
	jr	00118$
;ramon.c:246: case TileType_Poli_f2:
00112$:
;ramon.c:247: pSprite = (unsigned char *)SpritePoliF2;
	ld	b,#<(_SpritePoliF2)
	ld	e,#>(_SpritePoliF2)
;ramon.c:248: break;
	jr	00118$
;ramon.c:249: case TileType_Bolsa:
00113$:
;ramon.c:250: pSprite = (unsigned char *)SpriteBolsa;
	ld	b,#<(_SpriteBolsa)
	ld	e,#>(_SpriteBolsa)
;ramon.c:251: break;
	jr	00118$
;ramon.c:252: case TileType_Puerta1:
00114$:
;ramon.c:253: pSprite = (unsigned char *)SpritePuerta1;
	ld	b,#<(_SpritePuerta1)
	ld	e,#>(_SpritePuerta1)
;ramon.c:254: break;
	jr	00118$
;ramon.c:255: case TileType_Puerta2:
00115$:
;ramon.c:256: pSprite = (unsigned char *)SpritePuerta2;
	ld	b,#<(_SpritePuerta2)
	ld	e,#>(_SpritePuerta2)
;ramon.c:257: break;
	jr	00118$
;ramon.c:258: case TileType_Puerta3:
00116$:
;ramon.c:259: pSprite = (unsigned char *)SpritePuerta3;
	ld	b,#<(_SpritePuerta3)
	ld	e,#>(_SpritePuerta3)
;ramon.c:260: break;
	jr	00118$
;ramon.c:261: case TileType_Puerta4:
00117$:
;ramon.c:262: pSprite = (unsigned char *)SpritePuerta4;
	ld	b,#<(_SpritePuerta4)
	ld	e,#>(_SpritePuerta4)
;ramon.c:264: }
00118$:
;ramon.c:267: if(eTileType == TileType_Banco) {
	ld	a,c
	sub	a, #0x07
	jr	NZ,00120$
;ramon.c:268: PutSpriteMode0(pScreen, TILE_WIDTH / 2, TILE_HEIGHT, pSprite);
	ld	l, b
	ld	h, e
	push	hl
	ld	hl,#0x0A04
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_PutSpriteMode0
	ld	hl,#0x0006
	add	hl,sp
	ld	sp,hl
	jr	00122$
00120$:
;ramon.c:271: PutSpriteMode0Trans(pScreen, TILE_WIDTH / 2, TILE_HEIGHT, pSprite);
	ld	l, b
	ld	h, e
	push	hl
	ld	hl,#0x0A04
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_PutSpriteMode0Trans
	ld	hl,#0x0006
	add	hl,sp
	ld	sp,hl
00122$:
	ld	sp,ix
	pop	ix
	ret
_DrawTile_end::
;ramon.c:276: void SetColor(unsigned char nColorIndex, unsigned char nPaletteIndex)
;	---------------------------------
; Function SetColor
; ---------------------------------
_SetColor_start::
_SetColor:
	push	ix
	ld	ix,#0
	add	ix,sp
;ramon.c:283: __endasm;
	ld a, 4 (ix)
	ld b, 5 (ix)
	ld c, b
	call #0xBC32 ;SCR SET INK
	pop	ix
	ret
_SetColor_end::
;ramon.c:287: void SetMode(unsigned char nMode)
;	---------------------------------
; Function SetMode
; ---------------------------------
_SetMode_start::
_SetMode:
	push	ix
	ld	ix,#0
	add	ix,sp
;ramon.c:292: __endasm;
	ld a, 4 (ix)
	call #0xBC0E ;SCR_SET_MODE
	pop	ix
	ret
_SetMode_end::
;ramon.c:296: void SetCursor(unsigned char nColum, unsigned char nLine)
;	---------------------------------
; Function SetCursor
; ---------------------------------
_SetCursor_start::
_SetCursor:
	push	ix
	ld	ix,#0
	add	ix,sp
;ramon.c:302: __endasm;
	ld h, 4 (ix)
	ld l, 5 (ix)
	call #0xBB75 ;TXT SET CURSOR
	pop	ix
	ret
_SetCursor_end::
;ramon.c:306: void InitMode0()
;	---------------------------------
; Function InitMode0
; ---------------------------------
_InitMode0_start::
_InitMode0:
;ramon.c:308: SetMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_SetMode
	inc	sp
;ramon.c:315: __endasm;
	ld b, #0 ;black
	ld c, b
	call #0xBC38
	ret
_InitMode0_end::
;ramon.c:319: void InitMode1()
;	---------------------------------
; Function InitMode1
; ---------------------------------
_InitMode1_start::
_InitMode1:
;ramon.c:321: SetMode(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_SetMode
	inc	sp
;ramon.c:328: __endasm;
	ld b, #0 ;black
	ld c, b
	call #0xBC38
	ret
_InitMode1_end::
;ramon.c:332: void initPaleta(void) {
;	---------------------------------
; Function initPaleta
; ---------------------------------
_initPaleta_start::
_initPaleta:
;ramon.c:335: for(nColor = 0; nColor < NUM_COLORS; nColor++)
	ld	c,#0x00
00102$:
;ramon.c:336: SetColor(nColor, Palette[nColor]);
	ld	a,#<(_Palette)
	add	a, c
	ld	e,a
	ld	a,#>(_Palette)
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	ld	l,a
	push	bc
	ld	a,l
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_SetColor
	pop	af
	pop	bc
;ramon.c:335: for(nColor = 0; nColor < NUM_COLORS; nColor++)
	inc	c
	ld	a,c
	sub	a, #0x10
	jr	C,00102$
	ret
_initPaleta_end::
;ramon.c:340: void InitGame()
;	---------------------------------
; Function InitGame
; ---------------------------------
_InitGame_start::
_InitGame:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;ramon.c:345: globalTimer = 0;
	ld	hl,#_globalTimer + 0
	ld	(hl), #0x00
;ramon.c:347: initPaleta();
	call	_initPaleta
;ramon.c:350: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	de,#0x0000
;ramon.c:351: for(nY = 0; nY < NUM_TILES_HEIGHT-3; nY++)
00127$:
	ld	hl,#_aBackgroundTiles
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	hl,#0x0000
	ex	(sp), hl
00109$:
;ramon.c:352: aBackgroundTiles[nX][nY] = TileType_None;
	ld	a,-2 (ix)
	add	a, -6 (ix)
	ld	c,a
	ld	a,-1 (ix)
	adc	a, -5 (ix)
	ld	b,a
	xor	a, a
	ld	(bc),a
;ramon.c:351: for(nY = 0; nY < NUM_TILES_HEIGHT-3; nY++)
	inc	-6 (ix)
	jr	NZ,00180$
	inc	-5 (ix)
00180$:
	ld	a,-6 (ix)
	sub	a, #0x11
	ld	a,-5 (ix)
	sbc	a, #0x00
	jr	C,00109$
;ramon.c:350: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	ld	hl,#0x0014
	add	hl,de
	ex	de,hl
	inc	-4 (ix)
	jr	NZ,00181$
	inc	-3 (ix)
00181$:
	ld	a,-4 (ix)
	sub	a, #0x14
	ld	a,-3 (ix)
	sbc	a, #0x00
	jr	C,00127$
;ramon.c:355: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	de,#0x0000
;ramon.c:356: for(nY = 0; nY < 3; nY++)
00131$:
	ld	hl,#_aBackgroundTiles
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	hl,#0x0000
	ex	(sp), hl
00113$:
;ramon.c:357: aBackgroundTiles[nX][nY] = TileType_Banco;
	ld	a,-2 (ix)
	add	a, -6 (ix)
	ld	c,a
	ld	a,-1 (ix)
	adc	a, -5 (ix)
	ld	b,a
	ld	a,#0x07
	ld	(bc),a
;ramon.c:356: for(nY = 0; nY < 3; nY++)
	inc	-6 (ix)
	jr	NZ,00182$
	inc	-5 (ix)
00182$:
	ld	a,-6 (ix)
	sub	a, #0x03
	ld	a,-5 (ix)
	sbc	a, #0x00
	jr	C,00113$
;ramon.c:355: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	ld	hl,#0x0014
	add	hl,de
	ex	de,hl
	inc	-4 (ix)
	jr	NZ,00183$
	inc	-3 (ix)
00183$:
	ld	a,-4 (ix)
	sub	a, #0x14
	ld	a,-3 (ix)
	sbc	a, #0x00
	jr	C,00131$
;ramon.c:359: aBackgroundTiles[12][1] = TileType_Puerta1;
	ld	hl,#(_aBackgroundTiles + 0x00f1)
	ld	(hl),#0x0E
;ramon.c:360: aBackgroundTiles[13][1] = TileType_Puerta2;
	ld	hl,#(_aBackgroundTiles + 0x0105)
	ld	(hl),#0x0F
;ramon.c:361: aBackgroundTiles[12][2] = TileType_Puerta3;
	ld	hl,#(_aBackgroundTiles + 0x00f2)
	ld	(hl),#0x10
;ramon.c:362: aBackgroundTiles[13][2] = TileType_Puerta4;
	ld	hl,#(_aBackgroundTiles + 0x0106)
	ld	(hl),#0x11
;ramon.c:365: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	de,#0x0000
;ramon.c:366: for(nY = 17; nY < NUM_TILES_HEIGHT; nY++)
00135$:
	ld	hl,#_aBackgroundTiles
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	hl,#0x0011
	ex	(sp), hl
00117$:
;ramon.c:367: aBackgroundTiles[nX][nY] = TileType_Carretera;
	ld	a,-2 (ix)
	add	a, -6 (ix)
	ld	c,a
	ld	a,-1 (ix)
	adc	a, -5 (ix)
	ld	b,a
	ld	a,#0x0D
	ld	(bc),a
;ramon.c:366: for(nY = 17; nY < NUM_TILES_HEIGHT; nY++)
	inc	-6 (ix)
	jr	NZ,00184$
	inc	-5 (ix)
00184$:
	ld	a,-6 (ix)
	sub	a, #0x14
	ld	a,-5 (ix)
	sbc	a, #0x00
	jr	C,00117$
;ramon.c:365: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	ld	hl,#0x0014
	add	hl,de
	ex	de,hl
	inc	-4 (ix)
	jr	NZ,00185$
	inc	-3 (ix)
00185$:
	ld	a,-4 (ix)
	sub	a, #0x14
	ld	a,-3 (ix)
	sbc	a, #0x00
	jr	C,00135$
;ramon.c:371: aPlayer.puntos = 0;
	ld	hl,#(_aPlayer + 0x0002)
	ld	(hl),#0x00
;ramon.c:372: aPlayer.nX = 1;
	ld	hl,#_aPlayer
	ld	(hl),#0x01
;ramon.c:373: aPlayer.nY = 2;
	ld	hl,#(_aPlayer + 0x0001)
	ld	(hl),#0x02
;ramon.c:374: aPlayer.frame = 0;
	ld	hl,#(_aPlayer + 0x0003)
	ld	(hl),#0x00
;ramon.c:375: aPlayer.timer = 0;
	ld	hl,#(_aPlayer + 0x0004)
	ld	(hl),#0x00
;ramon.c:376: aBackgroundTiles[aPlayer.nX][aPlayer.nY] = TileType_Player_f1;
	ld	hl, #_aPlayer + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aPlayer + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x08
	ld	(bc),a
;ramon.c:377: aPlayer.anterior = TileType_Banco;
	ld	hl,#(_aPlayer + 0x0005)
	ld	(hl),#0x07
;ramon.c:380: aBolsa.nX = aPlayer.nX;
	ld	a, (#_aPlayer + 0)
	ld	(#_aBolsa),a
;ramon.c:381: aBolsa.nY = 2;
	ld	hl,#(_aBolsa + 0x0001)
	ld	(hl),#0x02
;ramon.c:382: aBolsa.activo = 0;
	ld	hl,#(_aBolsa + 0x0002)
	ld	(hl),#0x00
;ramon.c:383: aBolsa.anterior = TileType_None; // Al lanzar la bolsa
	ld	hl,#(_aBolsa + 0x0003)
	ld	(hl),#0x00
;ramon.c:387: aPoli1.nX = 1;
	ld	hl,#_aPoli1
	ld	(hl),#0x01
;ramon.c:388: aPoli1.nY = 6;
	ld	hl,#(_aPoli1 + 0x0001)
	ld	(hl),#0x06
;ramon.c:389: aPoli1.timer = 0;
	ld	hl,#(_aPoli1 + 0x0002)
	ld	(hl),#0x00
;ramon.c:390: aPoli1.frame = 0;
	ld	hl,#(_aPoli1 + 0x0003)
	ld	(hl),#0x00
;ramon.c:392: aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_Poli_f1;
	ld	hl, #_aPoli1 + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aPoli1 + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x0A
	ld	(bc),a
;ramon.c:395: aPoli2.nX = 10;
	ld	hl,#_aPoli2
	ld	(hl),#0x0A
;ramon.c:396: aPoli2.nY = 10;
	ld	hl,#(_aPoli2 + 0x0001)
	ld	(hl),#0x0A
;ramon.c:397: aPoli2.timer = 0;
	ld	hl,#(_aPoli2 + 0x0002)
	ld	(hl),#0x00
;ramon.c:398: aPoli1.frame = 0;
	ld	hl,#(_aPoli1 + 0x0003)
	ld	(hl),#0x00
;ramon.c:400: aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_Poli_f1;
	ld	hl, #_aPoli2 + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aPoli2 + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x0A
	ld	(bc),a
;ramon.c:403: aPoli3.nX = 18;
	ld	hl,#_aPoli3
	ld	(hl),#0x12
;ramon.c:404: aPoli3.nY = 14;
	ld	hl,#(_aPoli3 + 0x0001)
	ld	(hl),#0x0E
;ramon.c:405: aPoli3.timer = 0;
	ld	hl,#(_aPoli3 + 0x0002)
	ld	(hl),#0x00
;ramon.c:406: aPoli1.frame = 0;
	ld	hl,#(_aPoli1 + 0x0003)
	ld	(hl),#0x00
;ramon.c:408: aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_Poli_f1;
	ld	hl, #_aPoli3 + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aPoli3 + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x0A
	ld	(bc),a
;ramon.c:411: aCamion[0].nX = 16;
	ld	hl,#_aCamion
	ld	(hl),#0x10
;ramon.c:412: aCamion[0].nY = 18;
	ld	hl,#(_aCamion + 0x0001)
	ld	(hl),#0x12
;ramon.c:413: aCamion[1].nX = 17;
	ld	hl,#(_aCamion + 0x0002)
	ld	(hl),#0x11
;ramon.c:414: aCamion[1].nY = 18;
	ld	hl,#(_aCamion + 0x0003)
	ld	(hl),#0x12
;ramon.c:415: aCamion[2].nX = 18;
	ld	hl,#(_aCamion + 0x0004)
	ld	(hl),#0x12
;ramon.c:416: aCamion[2].nY = 18;
	ld	hl,#(_aCamion + 0x0005)
	ld	(hl),#0x12
;ramon.c:417: aCamion[3].nX = 16;
	ld	hl,#(_aCamion + 0x0006)
	ld	(hl),#0x10
;ramon.c:418: aCamion[3].nY = 19;
	ld	hl,#(_aCamion + 0x0007)
	ld	(hl),#0x13
;ramon.c:419: aCamion[4].nX = 17;
	ld	hl,#(_aCamion + 0x0008)
	ld	(hl),#0x11
;ramon.c:420: aCamion[4].nY = 19;
	ld	hl,#(_aCamion + 0x0009)
	ld	(hl),#0x13
;ramon.c:421: aCamion[5].nX = 18;
	ld	hl,#(_aCamion + 0x000a)
	ld	(hl),#0x12
;ramon.c:422: aCamion[5].nY = 19;
	ld	hl,#(_aCamion + 0x000b)
	ld	(hl),#0x13
;ramon.c:425: aBackgroundTiles[aCamion[0].nX][aCamion[0].nY] = TileType_Camion1;
	ld	hl, #_aCamion + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aCamion + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x01
	ld	(bc),a
;ramon.c:426: aBackgroundTiles[aCamion[1].nX][aCamion[1].nY] = TileType_Camion2;
	ld	hl, #_aCamion + 2
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aCamion + 0x0003) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x02
	ld	(bc),a
;ramon.c:427: aBackgroundTiles[aCamion[2].nX][aCamion[2].nY] = TileType_Camion3;
	ld	hl, #_aCamion + 4
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aCamion + 0x0005) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x03
	ld	(bc),a
;ramon.c:429: aBackgroundTiles[aCamion[3].nX][aCamion[3].nY] = TileType_Camion4;
	ld	hl, #_aCamion + 6
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aCamion + 0x0007) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x04
	ld	(bc),a
;ramon.c:430: aBackgroundTiles[aCamion[4].nX][aCamion[4].nY] = TileType_Camion5;
	ld	hl, #_aCamion + 8
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aCamion + 0x0009) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x05
	ld	(bc),a
;ramon.c:431: aBackgroundTiles[aCamion[5].nX][aCamion[5].nY] = TileType_Camion6;
	ld	hl, #_aCamion + 10
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aCamion + 0x000b) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x06
	ld	(bc),a
;ramon.c:434: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
;ramon.c:435: for(nY = 0; nY < NUM_TILES_HEIGHT; nY++)
00139$:
	ld	de,#0x0000
00121$:
;ramon.c:436: DrawTile(nX, nY);
	ld	l,e
	ld	c,-4 (ix)
	push	de
	ld	a,l
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_DrawTile
	pop	af
	pop	de
;ramon.c:435: for(nY = 0; nY < NUM_TILES_HEIGHT; nY++)
	inc	de
	ld	a,e
	sub	a, #0x14
	ld	a,d
	sbc	a, #0x00
	jr	C,00121$
;ramon.c:434: for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
	inc	-4 (ix)
	jr	NZ,00186$
	inc	-3 (ix)
00186$:
	ld	a,-4 (ix)
	sub	a, #0x14
	ld	a,-3 (ix)
	sbc	a, #0x00
	jr	C,00139$
	ld	sp,ix
	pop	ix
	ret
_InitGame_end::
;ramon.c:441: void MovePlayer()
;	---------------------------------
; Function MovePlayer
; ---------------------------------
_MovePlayer_start::
_MovePlayer:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;ramon.c:443: char nChar = GetChar();
	call	_GetChar
	ld	-1 (ix),l
;ramon.c:444: unsigned char moviendose = 0;
	ld	b,#0x00
;ramon.c:446: if(nChar == -13 || nChar == -14) moviendose = 1;
	ld	a,-1 (ix)
	sub	a, #0xF2
	jr	NZ,00156$
	ld	a,#0x01
	jr	00157$
00156$:
	xor	a,a
00157$:
	ld	e,a
	ld	a,-1 (ix)
	sub	a, #0xF3
	jr	NZ,00158$
	ld	a,#0x01
	jr	00159$
00158$:
	xor	a,a
00159$:
	ld	l,a
	or	a,a
	jr	NZ,00101$
	or	a,e
	jr	Z,00102$
00101$:
	ld	b,#0x01
00102$:
;ramon.c:448: if(moviendose == 1) {
	dec	b
	jp	NZ,00117$
;ramon.c:449: if(nChar == -13) //Right
	ld	a,l
	or	a, a
	jp	Z,00111$
;ramon.c:451: if(aPlayer.nX < 19)
	ld	hl, #_aPlayer + 0
	ld	b,(hl)
	ld	a,b
	sub	a, #0x13
	jp	NC,00112$
;ramon.c:453: aBackgroundTiles[aPlayer.nX][aPlayer.nY] = aPlayer.anterior;
	ld	c,b
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	b,l
	ld	d,h
	ld	a,#<(_aBackgroundTiles)
	add	a, b
	ld	b,a
	ld	a,#>(_aBackgroundTiles)
	adc	a, d
	ld	d,a
	ld	hl, #(_aPlayer + 0x0001) + 0
	ld	l,(hl)
	ld	a,b
	add	a, l
	ld	b,a
	ld	a,d
	adc	a, #0x00
	ld	d,a
	ld	a, (#(_aPlayer + 0x0005) + 0)
	ld	l, b
	ld	h, d
	ld	(hl),a
;ramon.c:454: DrawTile(aPlayer.nX, aPlayer.nY);
	ld	hl, #(_aPlayer + 0x0001) + 0
	ld	b,(hl)
	ld	hl, #_aPlayer + 0
	ld	c, (hl)
	push	bc
	call	_DrawTile
	pop	af
;ramon.c:455: aPlayer.anterior = aBackgroundTiles[aPlayer.nX+1][aPlayer.nY];
	ld	hl, #_aPlayer + 0
	ld	l,(hl)
	inc	l
	ld	c,l
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	b,l
	ld	d,h
	ld	a,#<(_aBackgroundTiles)
	add	a, b
	ld	b,a
	ld	a,#>(_aBackgroundTiles)
	adc	a, d
	ld	d,a
	ld	hl, #(_aPlayer + 0x0001) + 0
	ld	l,(hl)
	ld	a,b
	add	a, l
	ld	b,a
	ld	a,d
	adc	a, #0x00
	ld	h, a
	ld	l, b
	ld	a,(hl)
	ld	(#(_aPlayer + 0x0005)),a
;ramon.c:456: aPlayer.nX++;
	ld	a,(#_aPlayer + 0)
	inc	a
	ld	hl,#_aPlayer
	ld	(hl),a
	jp	00112$
00111$:
;ramon.c:459: else if(nChar == -14) //Left
	ld	a,e
	or	a, a
	jr	Z,00112$
;ramon.c:461: if(aPlayer.nX > 0)
	ld	hl, #_aPlayer + 0
	ld	b,(hl)
	ld	a,b
	or	a, a
	jr	Z,00112$
;ramon.c:463: aBackgroundTiles[aPlayer.nX][aPlayer.nY] = aPlayer.anterior;
	ld	c,b
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	b,l
	ld	e,h
	ld	a,#<(_aBackgroundTiles)
	add	a, b
	ld	b,a
	ld	a,#>(_aBackgroundTiles)
	adc	a, e
	ld	e,a
	ld	hl, #(_aPlayer + 0x0001) + 0
	ld	l,(hl)
	ld	a,b
	add	a, l
	ld	b,a
	ld	a,e
	adc	a, #0x00
	ld	e,a
	ld	a, (#(_aPlayer + 0x0005) + 0)
	ld	l, b
	ld	h, e
	ld	(hl),a
;ramon.c:464: DrawTile(aPlayer.nX, aPlayer.nY);
	ld	hl, #(_aPlayer + 0x0001) + 0
	ld	b,(hl)
	ld	hl, #_aPlayer + 0
	ld	e,(hl)
	push	bc
	inc	sp
	ld	a,e
	push	af
	inc	sp
	call	_DrawTile
	pop	af
;ramon.c:465: aPlayer.anterior = aBackgroundTiles[aPlayer.nX-1][aPlayer.nY];
	ld	hl, #_aPlayer + 0
	ld	l,(hl)
	dec	l
	ld	c,l
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	de, #_aBackgroundTiles
	add	hl, de
	ld	e,l
	ld	d,h
	ld	hl, #(_aPlayer + 0x0001) + 0
	ld	l,(hl)
	ld	a,e
	add	a, l
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	ld	(#(_aPlayer + 0x0005)),a
;ramon.c:466: aPlayer.nX--;
	ld	a,(#_aPlayer + 0)
	add	a,#0xFF
	ld	hl,#_aPlayer
	ld	(hl),a
00112$:
;ramon.c:471: if(aPlayer.nX % 2 == 0) {
	ld	hl, #_aPlayer + 0
	ld	l,(hl)
	ld	a,l
	and	a, #0x01
	ld	b,a
;ramon.c:472: aBackgroundTiles[aPlayer.nX][aPlayer.nY] = TileType_Player_f2;
	ld	e,l
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ex	de,hl
;ramon.c:471: if(aPlayer.nX % 2 == 0) {
	ld	a,b
	or	a, a
	jr	NZ,00114$
;ramon.c:472: aBackgroundTiles[aPlayer.nX][aPlayer.nY] = TileType_Player_f2;
	ld	hl,#_aBackgroundTiles
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #_aPlayer + 1
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x09
	ld	(bc),a
;ramon.c:473: aPlayer.frame = 0;
	ld	hl,#(_aPlayer + 0x0003)
	ld	(hl),#0x00
	jr	00115$
00114$:
;ramon.c:476: aBackgroundTiles[aPlayer.nX][aPlayer.nY] = TileType_Player_f1;
	ld	hl,#_aBackgroundTiles
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #_aPlayer + 1
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x08
	ld	(bc),a
;ramon.c:477: aPlayer.frame = 1;
	ld	hl,#(_aPlayer + 0x0003)
	ld	(hl),#0x01
00115$:
;ramon.c:479: DrawTile(aPlayer.nX, aPlayer.nY);
	ld	hl, #_aPlayer + 1
	ld	c,(hl)
	ld	hl, #_aPlayer + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
00117$:
;ramon.c:484: if(nChar == 'L' || nChar == 'l' || nChar == 32)
	ld	a,-1 (ix)
	sub	a, #0x4C
	jr	Z,00120$
	ld	a,-1 (ix)
	sub	a, #0x6C
	jr	Z,00120$
	ld	a,-1 (ix)
	sub	a, #0x20
	jr	NZ,00124$
00120$:
;ramon.c:487: if(aBolsa.activo == 0)
	ld	a, (#(_aBolsa + 0x0002) + 0)
	or	a, a
	jr	NZ,00124$
;ramon.c:489: aBolsa.activo = 1;
	ld	hl,#(_aBolsa + 0x0002)
	ld	(hl),#0x01
;ramon.c:490: aBolsa.anterior = TileType_None;
	ld	hl,#(_aBolsa + 0x0003)
	ld	(hl),#0x00
;ramon.c:491: aBolsa.nX = aPlayer.nX;
	ld	hl, #_aPlayer + 0
	ld	c,(hl)
	ld	hl,#_aBolsa
	ld	(hl),c
;ramon.c:493: DrawTile(aBolsa.nX, aBolsa.nY);
	ld	a,(#_aBolsa + 1)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_DrawTile
	pop	af
00124$:
	inc	sp
	pop	ix
	ret
_MovePlayer_end::
;ramon.c:499: unsigned char MoveBolsa(void)
;	---------------------------------
; Function MoveBolsa
; ---------------------------------
_MoveBolsa_start::
_MoveBolsa:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;ramon.c:502: if(aBolsa.nY >2)	aBackgroundTiles[aBolsa.nX][aBolsa.nY] = aBolsa.anterior;
	ld	hl, #(_aBolsa + 0x0001) + 0
	ld	c,(hl)
	ld	a,#0x02
	sub	a, c
	jr	NC,00102$
	ld	hl, #_aBolsa + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	de, #_aBackgroundTiles
	add	hl, de
	ld	e,l
	ld	d,h
	ld	a,e
	add	a, c
	ld	c,a
	ld	a,d
	adc	a, #0x00
	ld	b,a
	ld	a, (#_aBolsa + 3)
	ld	(bc),a
00102$:
;ramon.c:504: DrawTile(aBolsa.nX, aBolsa.nY);
	ld	hl, #(_aBolsa + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aBolsa + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
;ramon.c:506: if(aBolsa.nY < 19)
	ld	hl, #(_aBolsa + 0x0001) + 0
	ld	c,(hl)
;ramon.c:516: aBolsa.activo = 0;
;ramon.c:506: if(aBolsa.nY < 19)
	ld	a,c
	sub	a, #0x13
	jp	NC,00114$
;ramon.c:509: aBolsa.nY++;
	inc	c
	ld	hl,#(_aBolsa + 0x0001)
	ld	(hl),c
;ramon.c:510: aBolsa.anterior = aBackgroundTiles[aBolsa.nX][aBolsa.nY];
	ld	hl, #_aBolsa + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl,#_aBackgroundTiles
	add	hl,de
	ex	de,hl
	ld	a,e
	add	a, c
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	ld	hl,#(_aBolsa + 0x0003)
	ld	(hl),a
;ramon.c:513: if(aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Poli_f1 ||
	ld	hl, #_aBolsa + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl,#_aBackgroundTiles
	add	hl,de
	ex	de,hl
	ld	a,(#(_aBolsa + 0x0001) + 0)
	ld	-1 (ix),a
	ld	a,e
	add	a, c
	ld	c,a
	ld	a,d
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	l,a
	sub	a, #0x0A
	jr	Z,00103$
;ramon.c:514: aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Poli_f2)
	ld	a,e
	add	a, -1 (ix)
	ld	c,a
	ld	a,d
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	c,a
	sub	a, #0x0B
	jr	NZ,00104$
00103$:
;ramon.c:516: aBolsa.activo = 0;
	ld	hl,#(_aBolsa + 0x0002)
	ld	(hl),#0x00
;ramon.c:517: return 0;
	ld	l,#0x00
	jp	00118$
00104$:
;ramon.c:521: if(aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion1 ||
	dec	c
	jr	Z,00106$
;ramon.c:522: aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion2 ||
;ramon.c:523: aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion3 ||
	ld	a,c
	cp	a,#0x02
	jr	Z,00106$
;ramon.c:524: aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion4 ||
;ramon.c:525: aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion5 ||
	cp	a,#0x03
	jr	Z,00106$
	cp	a,#0x04
	jr	Z,00106$
;ramon.c:526: aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion6 )
	cp	a,#0x05
	jr	Z,00106$
	sub	a, #0x06
	jr	NZ,00107$
00106$:
;ramon.c:528: aPlayer.puntos++;
	ld	a,(#(_aPlayer + 0x0002) + 0)
	inc	a
	ld	hl,#(_aPlayer + 0x0002)
	ld	(hl),a
;ramon.c:529: aBolsa.nX = aPlayer.nX;
	ld	a, (#_aPlayer + 0)
	ld	(#_aBolsa),a
;ramon.c:530: aBolsa.nY = 2;
	ld	hl,#(_aBolsa + 0x0001)
	ld	(hl),#0x02
;ramon.c:531: aBolsa.activo = 0;
	ld	hl,#(_aBolsa + 0x0002)
	ld	(hl),#0x00
00107$:
;ramon.c:534: aBackgroundTiles[aBolsa.nX][aBolsa.nY] = TileType_Bolsa;
	ld	hl, #_aBolsa + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aBolsa + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x0C
	ld	(bc),a
	jr	00115$
00114$:
;ramon.c:538: aBolsa.nX = aPlayer.nX;
	ld	a, (#_aPlayer + 0)
	ld	(#_aBolsa),a
;ramon.c:539: aBolsa.nY = 2;
	ld	hl,#(_aBolsa + 0x0001)
	ld	(hl),#0x02
;ramon.c:540: aBolsa.activo = 0;
	ld	hl,#(_aBolsa + 0x0002)
	ld	(hl),#0x00
00115$:
;ramon.c:543: if(aBolsa.activo == 1)
	ld	hl, #_aBolsa + 2
	ld	l,(hl)
	dec	l
	jr	NZ,00117$
;ramon.c:544: DrawTile(aBolsa.nX, aBolsa.nY);
	ld	hl, #(_aBolsa + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aBolsa + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
00117$:
;ramon.c:546: return 1;
	ld	l,#0x01
00118$:
	inc	sp
	pop	ix
	ret
_MoveBolsa_end::
;ramon.c:550: void MovePolicias(void)
;	---------------------------------
; Function MovePolicias
; ---------------------------------
_MovePolicias_start::
_MovePolicias:
;ramon.c:553: if(aPoli1.timer % 2 == 0)
	ld	a, (#(_aPoli1 + 0x0002) + 0)
	rrca
	jp	C,00110$
;ramon.c:555: aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_None;
	ld	hl, #_aPoli1 + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aPoli1 + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	xor	a, a
	ld	(bc),a
;ramon.c:557: DrawTile(aPoli1.nX, aPoli1.nY);
	ld	hl, #(_aPoli1 + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aPoli1 + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
;ramon.c:559: if(aPlayer.nX > aPoli1.nX)
	ld	hl, #_aPlayer + 0
	ld	c,(hl)
	ld	hl, #_aPoli1 + 0
	ld	b,(hl)
;ramon.c:561: aPoli1.nX++;
	ld	a,b
	cp	a,c
	jr	NC,00104$
	inc	a
	ld	hl,#_aPoli1
	ld	(hl),a
	jr	00105$
00104$:
;ramon.c:563: } else if(aPlayer.nX < aPoli1.nX)
	ld	a,c
	sub	a, b
	jr	NC,00105$
;ramon.c:565: aPoli1.nX--;
	ld	a,b
	add	a,#0xFF
	ld	hl,#_aPoli1
	ld	(hl),a
00105$:
;ramon.c:569: if(aPoli1.frame == 0) {
	ld	hl, #(_aPoli1 + 0x0003) + 0
	ld	c,(hl)
;ramon.c:555: aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_None;
	ld	hl, #_aPoli1 + 0
	ld	b,(hl)
	ld	hl, #(_aPoli1 + 0x0001) + 0
	ld	e,(hl)
;ramon.c:570: aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_Poli_f1;
	push	de
	ld	e,b
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	ld	b,l
	ld	d,h
	ld	a,#<(_aBackgroundTiles)
	add	a, b
	ld	b,a
	ld	a,#>(_aBackgroundTiles)
	adc	a, d
	ld	d,a
	ld	a,b
	add	a, e
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	d,a
;ramon.c:569: if(aPoli1.frame == 0) {
	ld	a,c
	or	a, a
	jr	NZ,00107$
;ramon.c:570: aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_Poli_f1;
	ld	a,#0x0A
	ld	(de),a
;ramon.c:571: aPoli1.frame = 1;
	ld	hl,#(_aPoli1 + 0x0003)
	ld	(hl),#0x01
	jr	00108$
00107$:
;ramon.c:574: aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_Poli_f2;
	ld	a,#0x0B
	ld	(de),a
;ramon.c:575: aPoli1.frame = 0;
	ld	hl,#(_aPoli1 + 0x0003)
	ld	(hl),#0x00
00108$:
;ramon.c:579: DrawTile(aPoli1.nX, aPoli1.nY);
	ld	hl, #(_aPoli1 + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aPoli1 + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
00110$:
;ramon.c:581: aPoli1.timer++;
	ld	a,(#(_aPoli1 + 0x0002) + 0)
	inc	a
	ld	hl,#(_aPoli1 + 0x0002)
	ld	(hl),a
;ramon.c:584: if(aPoli2.timer % 2 == 0 && aBolsa.activo)
	ld	a, (#(_aPoli2 + 0x0002) + 0)
	rrca
	jp	C,00120$
	ld	a, (#_aBolsa + 2)
	or	a, a
	jp	Z,00120$
;ramon.c:586: aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_None;
	ld	hl, #_aPoli2 + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aPoli2 + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	xor	a, a
	ld	(bc),a
;ramon.c:588: DrawTile(aPoli2.nX, aPoli2.nY);
	ld	hl, #(_aPoli2 + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aPoli2 + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
;ramon.c:590: if(aBolsa.nX > aPoli2.nX)
	ld	hl, #_aBolsa + 0
	ld	c,(hl)
	ld	hl, #_aPoli2 + 0
	ld	b,(hl)
;ramon.c:592: aPoli2.nX++;
	ld	a,b
	cp	a,c
	jr	NC,00114$
	inc	a
	ld	hl,#_aPoli2
	ld	(hl),a
	jr	00115$
00114$:
;ramon.c:594: } else if(aBolsa.nX < aPoli2.nX)
	ld	a,c
	sub	a, b
	jr	NC,00115$
;ramon.c:596: aPoli2.nX--;
	ld	a,b
	add	a,#0xFF
	ld	hl,#_aPoli2
	ld	(hl),a
00115$:
;ramon.c:600: if(aPoli2.frame == 0) {
	ld	hl, #(_aPoli2 + 0x0003) + 0
	ld	c,(hl)
;ramon.c:586: aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_None;
	ld	hl, #_aPoli2 + 0
	ld	b,(hl)
	ld	hl, #(_aPoli2 + 0x0001) + 0
	ld	e,(hl)
;ramon.c:601: aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_Poli_f1;
	push	de
	ld	e,b
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	ld	b,l
	ld	d,h
	ld	a,#<(_aBackgroundTiles)
	add	a, b
	ld	b,a
	ld	a,#>(_aBackgroundTiles)
	adc	a, d
	ld	d,a
	ld	a,b
	add	a, e
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	d,a
;ramon.c:600: if(aPoli2.frame == 0) {
	ld	a,c
	or	a, a
	jr	NZ,00117$
;ramon.c:601: aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_Poli_f1;
	ld	a,#0x0A
	ld	(de),a
;ramon.c:602: aPoli2.frame = 1;
	ld	hl,#(_aPoli2 + 0x0003)
	ld	(hl),#0x01
	jr	00118$
00117$:
;ramon.c:605: aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_Poli_f2;
	ld	a,#0x0B
	ld	(de),a
;ramon.c:606: aPoli2.frame = 0;
	ld	hl,#(_aPoli2 + 0x0003)
	ld	(hl),#0x00
00118$:
;ramon.c:608: DrawTile(aPoli2.nX, aPoli2.nY);
	ld	hl, #(_aPoli2 + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aPoli2 + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
00120$:
;ramon.c:611: aPoli2.timer++;
	ld	a,(#(_aPoli2 + 0x0002) + 0)
	inc	a
	ld	hl,#(_aPoli2 + 0x0002)
	ld	(hl),a
;ramon.c:614: if(aPoli3.timer % 2 == 0)
	ld	a, (#(_aPoli3 + 0x0002) + 0)
	rrca
	jp	C,00133$
;ramon.c:616: aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_None;
	ld	hl, #_aPoli3 + 0
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #(_aPoli3 + 0x0001) + 0
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	xor	a, a
	ld	(bc),a
;ramon.c:617: DrawTile(aPoli3.nX, aPoli3.nY);
	ld	hl, #(_aPoli3 + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aPoli3 + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
;ramon.c:618: if(aPoli3.timer/2 % 10 < 6)
	ld	a, (#(_aPoli3 + 0x0002) + 0)
	srl	a
	ld	c,a
	ld	a,#0x0A
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
;ramon.c:616: aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_None;
	call	__moduchar_rrx_s
	pop	af
	ld	c,l
	ld	hl, #_aPoli3 + 0
	ld	b,(hl)
;ramon.c:618: if(aPoli3.timer/2 % 10 < 6)
	ld	a,c
	sub	a, #0x06
	jr	NC,00123$
;ramon.c:620: aPoli3.nX--;
	ld	a,b
	add	a,#0xFF
	ld	hl,#_aPoli3
	ld	(hl),a
	jr	00124$
00123$:
;ramon.c:622: aPoli3.nX++;
	ld	a,b
	inc	a
	ld	hl,#_aPoli3
	ld	(hl),a
00124$:
;ramon.c:625: if(aPoli3.nX < 1)
	ld	hl, #_aPoli3 + 0
	ld	l,(hl)
	ld	a,l
	sub	a, #0x01
	jr	NC,00126$
;ramon.c:627: aPoli3.nX = 19;
	ld	hl,#_aPoli3
	ld	(hl),#0x13
00126$:
;ramon.c:630: if(aPoli3.nX > 19)
	ld	hl, #_aPoli3 + 0
	ld	l,(hl)
	ld	a,#0x13
	sub	a, l
	jr	NC,00128$
;ramon.c:632: aPoli3.nX = 0;
	ld	hl,#_aPoli3
	ld	(hl),#0x00
00128$:
;ramon.c:636: if(aPoli3.frame == 0) {
	ld	hl, #(_aPoli3 + 0x0003) + 0
	ld	c,(hl)
;ramon.c:616: aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_None;
	ld	hl, #_aPoli3 + 0
	ld	b,(hl)
	ld	hl, #(_aPoli3 + 0x0001) + 0
	ld	e,(hl)
;ramon.c:637: aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_Poli_f1;
	push	de
	ld	e,b
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	ld	b,l
	ld	d,h
	ld	a,#<(_aBackgroundTiles)
	add	a, b
	ld	b,a
	ld	a,#>(_aBackgroundTiles)
	adc	a, d
	ld	d,a
	ld	a,b
	add	a, e
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	d,a
;ramon.c:636: if(aPoli3.frame == 0) {
	ld	a,c
	or	a, a
	jr	NZ,00130$
;ramon.c:637: aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_Poli_f1;
	ld	a,#0x0A
	ld	(de),a
;ramon.c:638: aPoli3.frame = 1;
	ld	hl,#(_aPoli3 + 0x0003)
	ld	(hl),#0x01
	jr	00131$
00130$:
;ramon.c:641: aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_Poli_f2;
	ld	a,#0x0B
	ld	(de),a
;ramon.c:642: aPoli3.frame = 0;
	ld	hl,#(_aPoli3 + 0x0003)
	ld	(hl),#0x00
00131$:
;ramon.c:644: DrawTile(aPoli3.nX, aPoli3.nY);
	ld	hl, #(_aPoli3 + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_aPoli3 + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
00133$:
;ramon.c:646: aPoli3.timer++;
	ld	a,(#(_aPoli3 + 0x0002) + 0)
	inc	a
	ld	(#(_aPoli3 + 0x0002)),a
	ret
_MovePolicias_end::
;ramon.c:650: void MoveCamion(void)
;	---------------------------------
; Function MoveCamion
; ---------------------------------
_MoveCamion_start::
_MoveCamion:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-5
	add	hl,sp
	ld	sp,hl
;ramon.c:655: if(globalTimer % 3 == 0)
	ld	a,#0x03
	push	af
	inc	sp
	ld	a,(_globalTimer)
	push	af
	inc	sp
	call	__moduchar_rrx_s
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00112$
;ramon.c:657: for (nX = 0; nX < TAM_CAMION; nX++)
	ld	-5 (ix),#0x00
00108$:
;ramon.c:659: aBackgroundTiles[aCamion[nX].nX][aCamion[nX].nY] = TileType_Carretera;
	ld	l,-5 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	a,#<(_aCamion)
	add	a, l
	ld	e,a
	ld	a,#>(_aCamion)
	adc	a, h
	ld	d,a
	ld	a,(de)
	ld	c, a
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0001
	add	hl,de
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	c,a
	ld	a,b
	adc	a, #0x00
	ld	b,a
	ld	a,#0x0D
	ld	(bc),a
;ramon.c:660: DrawTile(aCamion[nX].nX, aCamion[nX].nY);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c,(hl)
	ld	a,(de)
	ld	b,a
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_DrawTile
	pop	af
	pop	de
	ld	a,(de)
;ramon.c:662: if(aCamion[nX].nX < 1)
	ld	c,a
	sub	a, #0x01
	jr	NC,00102$
;ramon.c:664: aCamion[nX].nX = 19;
	ld	a,#0x13
	ld	(de),a
	jr	00109$
00102$:
;ramon.c:666: aCamion[nX].nX--;
	ld	a,c
	add	a,#0xFF
	ld	(de),a
00109$:
;ramon.c:657: for (nX = 0; nX < TAM_CAMION; nX++)
	inc	-5 (ix)
	ld	a,-5 (ix)
	sub	a, #0x06
	jr	C,00108$
;ramon.c:670: for (nX = 0; nX < TAM_CAMION; nX++)
	ld	-5 (ix),#0x00
00110$:
;ramon.c:672: aBackgroundTiles[aCamion[nX].nX][aCamion[nX].nY] = 1+nX;
	ld	l,-5 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	a,#<(_aCamion)
	add	a, l
	ld	e,a
	ld	a,#>(_aCamion)
	adc	a, h
	ld	d,a
	ld	a,(de)
	ld	c, a
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc,#_aBackgroundTiles
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0001
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	ld	a,c
	add	a, l
	ld	-4 (ix),a
	ld	a,b
	adc	a, #0x00
	ld	-3 (ix),a
	ld	c,-5 (ix)
	inc	c
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),c
;ramon.c:673: DrawTile(aCamion[nX].nX, aCamion[nX].nY);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	ld	a,(de)
	ld	e,a
	push	bc
	push	bc
	inc	sp
	ld	a,e
	push	af
	inc	sp
	call	_DrawTile
	pop	af
	pop	bc
;ramon.c:670: for (nX = 0; nX < TAM_CAMION; nX++)
	ld	-5 (ix), c
	ld	a, c
	sub	a, #0x06
	jr	C,00110$
00112$:
	ld	sp,ix
	pop	ix
	ret
_MoveCamion_end::
;ramon.c:679: void GameOver(void)
;	---------------------------------
; Function GameOver
; ---------------------------------
_GameOver_start::
_GameOver:
;ramon.c:681: SetMode(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_SetMode
	inc	sp
;ramon.c:683: SetCursor(3, 7);
	ld	hl,#0x0703
	push	hl
	call	_SetCursor
;ramon.c:684: printf("Oh, no! La policia ha interceptado");
	ld	hl, #__str_0
	ex	(sp),hl
	call	_printf
;ramon.c:685: SetCursor(3, 9);
	ld	hl, #0x0903
	ex	(sp),hl
	call	_SetCursor
;ramon.c:686: printf("parte del dinero.");
	ld	hl, #__str_1
	ex	(sp),hl
	call	_printf
;ramon.c:687: SetCursor(3, 11);
	ld	hl, #0x0B03
	ex	(sp),hl
	call	_SetCursor
;ramon.c:688: printf("Tu jefe no va a estar contento.");
	ld	hl, #__str_2
	ex	(sp),hl
	call	_printf
;ramon.c:689: SetCursor(3, 15);
	ld	hl, #0x0F03
	ex	(sp),hl
	call	_SetCursor
	pop	af
;ramon.c:690: printf("Has conseguido pasar %i bolsas", aPlayer.puntos);
	ld	hl, #_aPlayer + 2
	ld	c, (hl)
	ld	b,#0x00
	push	bc
	ld	hl,#__str_3
	push	hl
	call	_printf
	pop	af
;ramon.c:692: SetCursor(6, 20);
	ld	hl, #0x1406
	ex	(sp),hl
	call	_SetCursor
;ramon.c:693: printf("Pulsa Enter para jugar de nuevo");
	ld	hl, #__str_4
	ex	(sp),hl
	call	_printf
	pop	af
;ramon.c:695: while(GetChar() != 13) {}
00101$:
	call	_GetChar
	ld	a,l
	sub	a, #0x0D
	jr	NZ,00101$
	ret
_GameOver_end::
__str_0:
	.ascii "Oh, no! La policia ha interceptado"
	.db 0x00
__str_1:
	.ascii "parte del dinero."
	.db 0x00
__str_2:
	.ascii "Tu jefe no va a estar contento."
	.db 0x00
__str_3:
	.ascii "Has conseguido pasar %i bolsas"
	.db 0x00
__str_4:
	.ascii "Pulsa Enter para jugar de nuevo"
	.db 0x00
;ramon.c:699: void Game()
;	---------------------------------
; Function Game
; ---------------------------------
_Game_start::
_Game:
;ramon.c:701: unsigned int nLastMoveTime = GetTime();
	call	_GetTime
;ramon.c:704: InitMode0();
	push	hl
	call	_InitMode0
	call	_InitGame
	pop	bc
;ramon.c:707: while(1)
00108$:
;ramon.c:709: if(GetTime() - nLastMoveTime < nGameSpeed)
	push	bc
	call	_GetTime
	ex	de,hl
	pop	bc
	ld	a,e
	sub	a, c
	ld	e,a
	ld	a,d
	sbc	a, b
	ld	d,a
	ld	a,e
	sub	a, #0x32
	ld	a,d
	sbc	a, #0x00
	jr	C,00108$
;ramon.c:711: nLastMoveTime = GetTime();
	call	_GetTime
;ramon.c:713: MovePlayer();
	push	hl
	call	_MovePlayer
	call	_MovePolicias
	call	_MoveCamion
	pop	bc
;ramon.c:717: if(aBolsa.activo == 1)
	ld	hl, #_aBolsa + 2
	ld	l,(hl)
	dec	l
	jr	NZ,00106$
;ramon.c:719: if(!MoveBolsa())
	push	bc
	call	_MoveBolsa
	pop	bc
	ld	a,l
	or	a, a
	jp	Z,_GameOver
;ramon.c:720: break;
00106$:
;ramon.c:723: globalTimer++; // Una vez movido todo, actualizamos temporizador global
	ld	hl, #_globalTimer+0
	inc	(hl)
;ramon.c:725: SetCursor(2,1);
	push	bc
	ld	hl,#0x0102
	push	hl
	call	_SetCursor
	pop	af
	pop	bc
;ramon.c:726: printf("Bolsas salvadas: %d" , aPlayer.puntos);
	ld	hl, #_aPlayer + 2
	ld	l,(hl)
	ld	h,#0x00
	push	bc
	push	hl
	ld	hl,#__str_5
	push	hl
	call	_printf
	pop	af
	ld	hl, #0x0208
	ex	(sp),hl
	call	_SetCursor
	ld	hl, #__str_6
	ex	(sp),hl
	call	_printf
	pop	af
	pop	bc
	jr	00108$
;ramon.c:733: GameOver();
	jp	_GameOver
_Game_end::
__str_5:
	.ascii "Bolsas salvadas: %d"
	.db 0x00
__str_6:
	.ascii "BANCO"
	.db 0x00
;ramon.c:738: void ShowMenu()
;	---------------------------------
; Function ShowMenu
; ---------------------------------
_ShowMenu_start::
_ShowMenu:
;ramon.c:740: InitMode1();
	call	_InitMode1
;ramon.c:742: initPaleta();
	call	_initPaleta
;ramon.c:744: SetCursor(12, 5);
	ld	hl,#0x050C
	push	hl
	call	_SetCursor
;ramon.c:745: printf("RAMON EL LADRON");
	ld	hl, #__str_7
	ex	(sp),hl
	call	_printf
;ramon.c:747: SetCursor(3, 8);
	ld	hl, #0x0803
	ex	(sp),hl
	call	_SetCursor
;ramon.c:748: printf("Usa los cursores para moverte");
	ld	hl, #__str_8
	ex	(sp),hl
	call	_printf
;ramon.c:749: SetCursor(3, 10);
	ld	hl, #0x0A03
	ex	(sp),hl
	call	_SetCursor
;ramon.c:750: printf("Usa espacio para lanzar el dinero");
	ld	hl, #__str_9
	ex	(sp),hl
	call	_printf
;ramon.c:752: SetCursor(8, 16);
	ld	hl, #0x1008
	ex	(sp),hl
	call	_SetCursor
;ramon.c:753: printf("Pulsa Enter para comenzar");
	ld	hl, #__str_10
	ex	(sp),hl
	call	_printf
;ramon.c:755: SetCursor(3, 24);
	ld	hl, #0x1803
	ex	(sp),hl
	call	_SetCursor
;ramon.c:756: printf("Code Monkeys. 2013");
	ld	hl, #__str_11
	ex	(sp),hl
	call	_printf
	pop	af
;ramon.c:758: while(GetChar() != 13) {}
00101$:
	call	_GetChar
	ld	a,l
	sub	a, #0x0D
	jr	NZ,00101$
	ret
_ShowMenu_end::
__str_7:
	.ascii "RAMON EL LADRON"
	.db 0x00
__str_8:
	.ascii "Usa los cursores para moverte"
	.db 0x00
__str_9:
	.ascii "Usa espacio para lanzar el dinero"
	.db 0x00
__str_10:
	.ascii "Pulsa Enter para comenzar"
	.db 0x00
__str_11:
	.ascii "Code Monkeys. 2013"
	.db 0x00
;ramon.c:761: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;ramon.c:763: ShowMenu();
	call	_ShowMenu
;ramon.c:765: while(1)
00102$:
;ramon.c:767: Game();
	call	_Game
	jr	00102$
_main_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
