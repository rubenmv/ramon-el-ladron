Ramón el ladrón
===============
Juego realizado para el concurso retro Amstrad CPC organizado por la Universida de Alicante y Byte Realms.
http://concursocpc.byterealms.com/

El jefe de Ramón, que es un ladrón, le acaba de encargar el golpe de su vida, un banco. Pero algo sale mal, alguien se ha chivado y la pasma ha rodeado el banco. Uno de sus compañeros se pasea con un furgón al otro lado de la calle y Ramón tiene la genial idea de lanzar las bolsas de dinero a través del cordón policial sin que estos se den cuenta, ya que no son muy espabilados.

Controles
=========
Los controles durante el juego son las teclas izquierda y derecha para mover a Ramón y el espacio para lanzar bolsas.
En las pantallas de menú la única opción es pulsar Enter para continuar o reiniciar.

Mecánica de juego
=================
El juego consiste en mover a Ramón a izquierda o derecha y lanzar bolsas mediante la tecla espacio para intentar acertar en el furgón evitando que la policía atrape alguna.
Cada policía tiene su propia personalidad: el primero te va a seguir allá donde vayas, por lo que tendrás que correr para dejarlo atrás, el segundo se lanzará detrás de la bolsa en cuanto la vea, y el tercero patrulla de derecha a izquierda de la pantalla recorriendo una zona.

<img src="https://raw.githubusercontent.com/rubenmv/ramon-el-ladron/master/screenshot.png" alt="ramon el ladron captura de juego" />

Nombre del grupo: Code Monkeys
==============================
- Martin Málaga, Alejandro; talon_amm@hotmail.com
- García Cussó, Fernando ; gcusso@gmail.com  
- García Guilabert, Kevin ; keving282@gmail.com 
- Martínez Vilar, Rubén ;rub3nmv@gmail.com
- Ramírez Bernabéu, Óscar ; graffnak@hotmail.com 

Herramientas utilizadas
=======================
- Compilador SDCC
- WinAPE
- Sprot
- cpcmania.com
- amstrad.es

Intrucciones de compilación
===========================
1. Instalar el copilador SDCC y compilar mediante la siguente linea dentro del directorio "src":
sdcc -mz80 --oldralloc --code-loc 0x6038 --data-loc 0 --no-std-crt0 crt0_cpc.rel putchar.rel ramon.c

2. Descargar el programa hex2bin y ejecutar la siguiente linea:
hex2bin ramon.ihx

3. Descargar el programa CPCDiskXP y ejecutar:
CPCDiskXP -File ramon.bin -AddAmsdosHeader 6000 -AddToNewDsk ramon_el_ladron.dsk

De esta manera se obtiene un fichero .dsk que se puede ejecutar desde el emulador WinAPE (http://www.winape.net/).

Licencia
========
Copyright 2013 Code Monkeys

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
