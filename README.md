Ramón el ladrón
===============
Juego para Amstrad CPC. Consiste en salvar las bolsas de dinero

Juego realizado para el concurso retro Amstrad CPC organizado por la Universida de Alicante y Byte Realms.
http://concursocpc.byterealms.com/

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
