////////////////////////////////////////////////////////////////////////
// ladrones.c
// Code Monkeys. 2013
////////////////////////////////////////////////////////////////////////
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sprites.h"

#define TILE_HEIGHT 10	//pixel
#define TILE_WIDTH 8	//pixel (4 bytes)
#define MODE0_HEIGHT 200
#define MODE0_WIDTH 160
#define NUM_TILES_WIDTH MODE0_WIDTH / TILE_WIDTH
#define NUM_TILES_HEIGHT MODE0_HEIGHT / TILE_HEIGHT


#define TAM_CAMION 6
#define NUM_COLORS 16
const unsigned char Palette[NUM_COLORS] = {13,26,8,24,11,18,25,22,6,3,4,13,10,0,25,8};
unsigned char globalTimer;

enum _eTileType
{
	TileType_None,
	TileType_Camion1,
	TileType_Camion2,
	TileType_Camion3,
	TileType_Camion4,
	TileType_Camion5,
	TileType_Camion6,
	TileType_Banco,
	TileType_Player_f1,
	TileType_Player_f2,
	TileType_Poli_f1,
	TileType_Poli_f2,
	TileType_Bolsa,
	TileType_Carretera,
	TileType_Puerta1,
	TileType_Puerta2,
	TileType_Puerta3,
	TileType_Puerta4,

}_eTileType;

enum _eTileType aBackgroundTiles[NUM_TILES_WIDTH][NUM_TILES_HEIGHT]; //20x20

typedef struct _tPlayer
{
	unsigned char nX;
	unsigned char nY;
	unsigned char puntos;
	unsigned char frame;
	unsigned char timer;
	unsigned char anterior;
}_tPlayer;

typedef struct _tBolsa
{
	unsigned char nX;
	unsigned char nY;
	unsigned char activo;
	unsigned char anterior;
}_tBolsa;

typedef struct _tPoli
{
	unsigned char nX;
	unsigned char nY;
	unsigned char timer;
	unsigned char frame;
}_tPoli;

typedef struct _tCamion
{
	unsigned char nX;
	unsigned char nY;
}_tCamion;

_tPlayer aPlayer;
_tBolsa aBolsa;
_tPoli aPoli1;
_tPoli aPoli2;
_tPoli aPoli3;
_tCamion aCamion[6];


// Devuelve el tiempo
unsigned char char3,char4;
unsigned int GetTime()
{
	unsigned int nTime = 0;

	__asm
		CALL #0xBD0D ;KL TIME PLEASE
		PUSH HL
		POP DE
		LD HL, #_char3
		LD (HL), D
		LD HL, #_char4
		LD (HL), E
	__endasm;

	nTime = (char3 << 8) + char4;

	return nTime;
}


// Recoge un caracter de teclado
char nGetChar;
char GetChar()
{
	__asm
		LD HL, #_nGetChar
		LD (HL), #0
		CALL #0xBB09 ;KM READ CHAR
		JP NC, _end_getchar
		LD (HL), A
		_end_getchar:
	__endasm;

	return nGetChar;
}


// Dibuja un sprite
void PutSpriteMode0(unsigned char *pAddress, unsigned char nWidth, unsigned char nHeight, unsigned char *pSprite)
{
	__asm
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
	__endasm;
}

// Dibuja una sprite con un color de transparencia
void PutSpriteMode0Trans(unsigned char *pAddress, unsigned char nWidth, unsigned char nHeight, unsigned char *pSprite)
{
  __asm
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
    __endasm;
}

// Dibuja una tile en la posicion indicada
void DrawTile(unsigned char nTileX, unsigned char nTileY)
{
	enum _eTileType eTileType = aBackgroundTiles[nTileX][nTileY];

	unsigned int nY = nTileY * TILE_HEIGHT;
	unsigned int nX = nTileX * TILE_WIDTH;
	unsigned char *pScreen = (unsigned char *)0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 2);
	unsigned char *pSprite = (unsigned char *)SpriteLadrillo; // Fondo de acera

	switch(eTileType)
	{
		// CAMION
		case TileType_Camion1:
			pSprite = (unsigned char *)SpriteCamion1;
			break;
		case TileType_Camion2:
			pSprite = (unsigned char *)SpriteCamion2;
			break;
		case TileType_Camion3:
			pSprite = (unsigned char *)SpriteCamion3;
			break;
		case TileType_Camion4:
			pSprite = (unsigned char *)SpriteCamion4;
			break;
		case TileType_Camion5:
			pSprite = (unsigned char *)SpriteCamion5;
			break;
		case TileType_Camion6:
			pSprite = (unsigned char *)SpriteCamion6;
			break;
		case TileType_Carretera:
			pSprite = (unsigned char *)SpriteCarretera;
			break;
		case TileType_Banco:
			pSprite = (unsigned char *)SpriteBanco;
			break;
		case TileType_Player_f1:
			pSprite = (unsigned char *)SpritePlayerF1;
			break;
		case TileType_Player_f2:
			pSprite = (unsigned char *)SpritePlayerF2;
			break;
		case TileType_Poli_f1:
			pSprite = (unsigned char *)SpritePoliF1;
			break;
		case TileType_Poli_f2:
			pSprite = (unsigned char *)SpritePoliF2;
			break;
		case TileType_Bolsa:
			pSprite = (unsigned char *)SpriteBolsa;
			break;
		case TileType_Puerta1:
			pSprite = (unsigned char *)SpritePuerta1;
			break;
		case TileType_Puerta2:
			pSprite = (unsigned char *)SpritePuerta2;
			break;
		case TileType_Puerta3:
			pSprite = (unsigned char *)SpritePuerta3;
			break;
		case TileType_Puerta4:
			pSprite = (unsigned char *)SpritePuerta4;
			break;
	}

	// Como el banco es gris, que usamos transparencia, lo ponemos en modo sin transparencia
	if(eTileType == TileType_Banco) {
		PutSpriteMode0(pScreen, TILE_WIDTH / 2, TILE_HEIGHT, pSprite);
	}
	else {
		PutSpriteMode0Trans(pScreen, TILE_WIDTH / 2, TILE_HEIGHT, pSprite);
	}
}

// Establece un color en la paleta
void SetColor(unsigned char nColorIndex, unsigned char nPaletteIndex)
{
	__asm
		ld a, 4 (ix)
		ld b, 5 (ix)
		ld c, b
		call #0xBC32 ;SCR SET INK
	__endasm;
}

// Establece el modo de pantalla indicado
void SetMode(unsigned char nMode)
{
	__asm
		ld a, 4 (ix)
		call #0xBC0E ;SCR_SET_MODE
	__endasm;
}

// Coloca el cursor en la posicion indicada
void SetCursor(unsigned char nColum, unsigned char nLine)
{
	__asm
		ld h, 4 (ix)
		ld l, 5 (ix)
		call #0xBB75 ;TXT SET CURSOR
	__endasm;
}

// Inicializa el modo 0 y establece un borde
void InitMode0()
{
	SetMode(0);

	//SCR SET BORDER 0
	__asm
		ld b, #0 ;black
		ld c, b
		call #0xBC38
	__endasm;
}

// Inicializa el modo 1 y establece un borde
void InitMode1()
{
	SetMode(1);

	//SCR SET BORDER 0
	__asm
		ld b, #0 ;black
		ld c, b
		call #0xBC38
	__endasm;
}

// Establece la paleta de color Palette
void initPaleta(void) {
	unsigned char nColor = 0;

	for(nColor = 0; nColor < NUM_COLORS; nColor++)
		SetColor(nColor, Palette[nColor]);
}

// Inicializa los parametros del juego
void InitGame()
{
	unsigned int nX = 0;
	unsigned int nY = 0;

	globalTimer = 0;

	initPaleta();

	// Inicializa los tiles a none
	for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
		for(nY = 0; nY < NUM_TILES_HEIGHT-3; nY++)
			aBackgroundTiles[nX][nY] = TileType_None;

	// Banco
	for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
		for(nY = 0; nY < 3; nY++)
			aBackgroundTiles[nX][nY] = TileType_Banco;

	aBackgroundTiles[12][1] = TileType_Puerta1;
	aBackgroundTiles[13][1] = TileType_Puerta2;
	aBackgroundTiles[12][2] = TileType_Puerta3;
	aBackgroundTiles[13][2] = TileType_Puerta4;

	// Carretera
	for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
		for(nY = 17; nY < NUM_TILES_HEIGHT; nY++)
			aBackgroundTiles[nX][nY] = TileType_Carretera;


	// PLAYER
	aPlayer.puntos = 0;
	aPlayer.nX = 1;
	aPlayer.nY = 2;
	aPlayer.frame = 0;
	aPlayer.timer = 0;
	aBackgroundTiles[aPlayer.nX][aPlayer.nY] = TileType_Player_f1;
	aPlayer.anterior = TileType_Banco;

	// BOLSA DINERO
	aBolsa.nX = aPlayer.nX;
	aBolsa.nY = 2;
	aBolsa.activo = 0;
	aBolsa.anterior = TileType_None; // Al lanzar la bolsa

	// POLICIAS
	// Sigue al ladron
	aPoli1.nX = 1;
	aPoli1.nY = 6;
	aPoli1.timer = 0;
	aPoli1.frame = 0;

	aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_Poli_f1;

	// Sigue a la bolsa
	aPoli2.nX = 10;
	aPoli2.nY = 10;
	aPoli2.timer = 0;
	aPoli1.frame = 0;

	aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_Poli_f1;

	// Aleatorio
	aPoli3.nX = 18;
	aPoli3.nY = 14;
	aPoli3.timer = 0;
	aPoli1.frame = 0;

	aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_Poli_f1;

	// CAMION
	aCamion[0].nX = 16;
	aCamion[0].nY = 18;
	aCamion[1].nX = 17;
	aCamion[1].nY = 18;
	aCamion[2].nX = 18;
	aCamion[2].nY = 18;
	aCamion[3].nX = 16;
	aCamion[3].nY = 19;
	aCamion[4].nX = 17;
	aCamion[4].nY = 19;
	aCamion[5].nX = 18;
	aCamion[5].nY = 19;

	// TILES CAMION. Parte superior
	aBackgroundTiles[aCamion[0].nX][aCamion[0].nY] = TileType_Camion1;
	aBackgroundTiles[aCamion[1].nX][aCamion[1].nY] = TileType_Camion2;
	aBackgroundTiles[aCamion[2].nX][aCamion[2].nY] = TileType_Camion3;
	// TILES CAMION. Parte inferior
	aBackgroundTiles[aCamion[3].nX][aCamion[3].nY] = TileType_Camion4;
	aBackgroundTiles[aCamion[4].nX][aCamion[4].nY] = TileType_Camion5;
	aBackgroundTiles[aCamion[5].nX][aCamion[5].nY] = TileType_Camion6;

	// Se dibuja todo
	for(nX = 0; nX < NUM_TILES_WIDTH; nX++)
		for(nY = 0; nY < NUM_TILES_HEIGHT; nY++)
			DrawTile(nX, nY);
}


// Movimiento del jugador
void MovePlayer()
{
	char nChar = GetChar();
	unsigned char moviendose = 0;

	if(nChar == -13 || nChar == -14) moviendose = 1;

	if(moviendose == 1) {
		if(nChar == -13) //Right
		{
			if(aPlayer.nX < 19)
			{
				aBackgroundTiles[aPlayer.nX][aPlayer.nY] = aPlayer.anterior;
				DrawTile(aPlayer.nX, aPlayer.nY);
				aPlayer.anterior = aBackgroundTiles[aPlayer.nX+1][aPlayer.nY];
				aPlayer.nX++;
			}
		}
		else if(nChar == -14) //Left
		{
			if(aPlayer.nX > 0)
			{
				aBackgroundTiles[aPlayer.nX][aPlayer.nY] = aPlayer.anterior;
				DrawTile(aPlayer.nX, aPlayer.nY);
				aPlayer.anterior = aBackgroundTiles[aPlayer.nX-1][aPlayer.nY];
				aPlayer.nX--;
			}
		}

		// Animacion
		if(aPlayer.nX % 2 == 0) {
			aBackgroundTiles[aPlayer.nX][aPlayer.nY] = TileType_Player_f2;
			aPlayer.frame = 0;
		}
		else {
			aBackgroundTiles[aPlayer.nX][aPlayer.nY] = TileType_Player_f1;
			aPlayer.frame = 1;
		}
		DrawTile(aPlayer.nX, aPlayer.nY);
	}


	// Lanza una bolsa de dinero
	if(nChar == 'L' || nChar == 'l' || nChar == 32)
	{
		// lanzar = 1;
		if(aBolsa.activo == 0)
		{
			aBolsa.activo = 1;
			aBolsa.anterior = TileType_None;
			aBolsa.nX = aPlayer.nX;
			//aBackgroundTiles[aBolsa.nX][aBolsa.nY] = TileType_Bolsa;
			DrawTile(aBolsa.nX, aBolsa.nY);
		}
	}
}

// Movimiento de la bolsa
unsigned char MoveBolsa(void)
{
	// Borramos la bolsa y ponemos el fondo anterior
	if(aBolsa.nY >2)	aBackgroundTiles[aBolsa.nX][aBolsa.nY] = aBolsa.anterior;

	DrawTile(aBolsa.nX, aBolsa.nY);

	if(aBolsa.nY < 19)
	{
		// Guardamos el fondo que se va a reemplazar con la bolsa
		aBolsa.nY++;
		aBolsa.anterior = aBackgroundTiles[aBolsa.nX][aBolsa.nY];

		// Atrapan la bolsa de dinero
		if(aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Poli_f1 ||
		   aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Poli_f2)
		{
			aBolsa.activo = 0;
			return 0;
		}

		// La bolsa entra en el camion. Solo cuando toca por encima
		if(aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion1 ||
		   aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion2 ||
		   aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion3 ||
		   aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion4 ||
		   aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion5 ||
		   aBackgroundTiles[aBolsa.nX][aBolsa.nY] == TileType_Camion6 )
		{
			aPlayer.puntos++;
			aBolsa.nX = aPlayer.nX;
			aBolsa.nY = 2;
			aBolsa.activo = 0;
		}

		aBackgroundTiles[aBolsa.nX][aBolsa.nY] = TileType_Bolsa;
	}
	else
	{
		aBolsa.nX = aPlayer.nX;
		aBolsa.nY = 2;
		aBolsa.activo = 0;
	}

	if(aBolsa.activo == 1)
		DrawTile(aBolsa.nX, aBolsa.nY);

	return 1;
}

// Movimiento de los policias
void MovePolicias(void)
{
	// Poli 1. Sigue al movimiento del jugador
	if(aPoli1.timer % 2 == 0)
	{
		aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_None;

		DrawTile(aPoli1.nX, aPoli1.nY);

		if(aPlayer.nX > aPoli1.nX)
		{
			aPoli1.nX++;

		} else if(aPlayer.nX < aPoli1.nX)
		{
			aPoli1.nX--;
		}

		// Animacion
		if(aPoli1.frame == 0) {
			aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_Poli_f1;
			aPoli1.frame = 1;
		}
		else {
			aBackgroundTiles[aPoli1.nX][aPoli1.nY] = TileType_Poli_f2;
			aPoli1.frame = 0;
		}


		DrawTile(aPoli1.nX, aPoli1.nY);
	}
	aPoli1.timer++;

	// Poli 2. Sigue a la bolsa de dinero
	if(aPoli2.timer % 2 == 0 && aBolsa.activo)
	{
		aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_None;

		DrawTile(aPoli2.nX, aPoli2.nY);

		if(aBolsa.nX > aPoli2.nX)
		{
			aPoli2.nX++;

		} else if(aBolsa.nX < aPoli2.nX)
		{
			aPoli2.nX--;
		}

		// Animacion
		if(aPoli2.frame == 0) {
			aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_Poli_f1;
			aPoli2.frame = 1;
		}
		else {
			aBackgroundTiles[aPoli2.nX][aPoli2.nY] = TileType_Poli_f2;
			aPoli2.frame = 0;
		}
		DrawTile(aPoli2.nX, aPoli2.nY);

	}
	aPoli2.timer++;

	// Poli 3. Patrulla de un lado a otro de la pantalla cubriendo un espacio
	if(aPoli3.timer % 2 == 0)
	{
		aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_None;
		DrawTile(aPoli3.nX, aPoli3.nY);
		if(aPoli3.timer/2 % 10 < 6)
		{
			aPoli3.nX--;
		} else {
			aPoli3.nX++;
		}

		if(aPoli3.nX < 1)
		{
			aPoli3.nX = 19;
		}

		if(aPoli3.nX > 19)
		{
			aPoli3.nX = 0;
		}

		// Animacion
		if(aPoli3.frame == 0) {
			aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_Poli_f1;
			aPoli3.frame = 1;
		}
		else {
			aBackgroundTiles[aPoli3.nX][aPoli3.nY] = TileType_Poli_f2;
			aPoli3.frame = 0;
		}
		DrawTile(aPoli3.nX, aPoli3.nY);
	}
	aPoli3.timer++;
}

// Movimiento del camion
void MoveCamion(void)
{
	unsigned char nX = 0;
	unsigned char nY = 0;

	if(globalTimer % 3 == 0)
	{
		for (nX = 0; nX < TAM_CAMION; nX++)
		{
			aBackgroundTiles[aCamion[nX].nX][aCamion[nX].nY] = TileType_Carretera;
			DrawTile(aCamion[nX].nX, aCamion[nX].nY);

			if(aCamion[nX].nX < 1)
			{
				aCamion[nX].nX = 19;
			}else{
				aCamion[nX].nX--;
			}
		}

		for (nX = 0; nX < TAM_CAMION; nX++)
		{
			aBackgroundTiles[aCamion[nX].nX][aCamion[nX].nY] = 1+nX;
			DrawTile(aCamion[nX].nX, aCamion[nX].nY);
		}
	}
}

// GameOver
void GameOver(void)
{
	SetMode(1);

	SetCursor(3, 7);
	printf("Oh, no! La policia ha interceptado");
	SetCursor(3, 9);
	printf("parte del dinero.");
	SetCursor(3, 11);
	printf("Tu jefe no va a estar contento.");
	SetCursor(3, 15);
	printf("Has conseguido pasar %i bolsas", aPlayer.puntos);

	SetCursor(6, 20);
	printf("Pulsa Enter para jugar de nuevo");

	while(GetChar() != 13) {}
}

// Inicializa y ejecuta el bucle de juego
void Game()
{
	unsigned int nLastMoveTime = GetTime();
	unsigned int nGameSpeed = 50;

	InitMode0();
	InitGame();

	while(1)
	{
		if(GetTime() - nLastMoveTime < nGameSpeed)
			continue;
		nLastMoveTime = GetTime();

		MovePlayer();
		MovePolicias();
		MoveCamion();

		if(aBolsa.activo == 1)
		{
			if(!MoveBolsa())
				break;
		}

		globalTimer++; // Una vez movido todo, actualizamos temporizador global

		SetCursor(2,1);
		printf("Bolsas salvadas: %d" , aPlayer.puntos);

		// Texto del banco
		SetCursor(8,2);
		printf("BANCO");
	}

	GameOver();
}


// MENU DE INICIO
void ShowMenu()
{
	InitMode1();

	initPaleta();

	SetCursor(12, 5);
	printf("RAMON EL LADRON");

	SetCursor(3, 8);
	printf("Usa los cursores para moverte");
	SetCursor(3, 10);
	printf("Usa espacio para lanzar el dinero");

	SetCursor(8, 16);
	printf("Pulsa Enter para comenzar");

	SetCursor(3, 24);
	printf("Code Monkeys. 2013");

	while(GetChar() != 13) {}
}

void main()
{
	ShowMenu();

	while(1)
	{
		Game();
	}
}
