Ramón el ladrón
===============
Juego realizado para el concurso retro Amstrad CPC 464 organizado por la Universidad de Alicante y Byte Realms.
http://concursocpc.byterealms.com/

Repositorio del juego en GitHub: https://github.com/rubenmv/ramon-el-ladron/

Argumento
=========
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

Características principales
===========================
Nuestro juego implementa tres patrones de movimiento para los distintos policías, siendo el jugador el que tiene que descifrarlos y tratar de esquivarlos al lanzar la bolsa de dinero, siendo el último policía el más imprevisible.

Ficha técnica
=============
- Lenguaje: C (compilando con SDCC) y ASM
- Tamaño: 9 KBytes
- Modos gráficos:
	- Modo 0 durante el juego, 160x200 con 16 colores.
	- Modo 1 para los menús (320x200 en 4 colores), ya que obteníamos mejor resolución para el texto.

Herramientas utilizadas
=======================
- Sublime Text 2 y Notepad++ como editores de código fuente.
- Compilador SDCC para trabajar en el lenguaje C.
- WinAPE para probar y depurar el juego.
- Sprot para la realización de los sprites.
- cpcmania.com y amstrad.es como fuentes principales de tutoriales.

Sobre el desarrollo del juego
=============================
El desarrollo de este juego nos llevó entre 2 y 3 semanas, aunque aqui hay que matizar ya que de las 3 semanas que teníamos inicialmente prácticamente la primera se dedicó a pensar en la idea del juego, familiarizarnos con las herramientas (compiladores básicamente) disponibles y como se trabaja con estos sistemas clásicos, que para nosotros era como algo de otro planeta, y nuestra experiencia con lenguaje ensamblador era nula.

También hay que decir que la ideal inicial de la mecánica del juego se cambió prácticamente a una semana de la entrega por otra que encontrábamos más divertida y que cumplía mejor los requisitos del concurso.

Uno de los grandes problemas que uno se encuentra al desarrollar para Amstrad es el de memoria, ya que estábamos acostumbrados a no pensar en ello ya que hoy en día los dispositivos tienen memoria suficiente para el desarrollo de aplicaciones relativamente pequeñas. Además las herramientas de depuración no ayudan demasiado, por lo que nos veíamos rascándonos la cabeza más de una vez porque el juego no arrancaba o se cerraba a mitad o al reiniciar partida.

En los últimos días se intentó incluir audio, pero no hubo manera de que sonara nada correctamente, incluso hablando con otro grupo sobre el tema tenían los mismos problemas que nosotros.

Los sprites se realizaron mediante la herramienta Sprot que permite guardar distintas paletas a utilizar y generar el código para los sprites.

Fué una experiencia un poco dolorosa por ser la primera vez pero que nos hace apreciar mucho mejor el esfuerzo que tenían que realizar los desarrolladores cuando los sistemas eran tan limitados técnicamente y no se podía encontrar herramientas o información tan fácilmente como hoy en día.

Intrucciones de compilación
===========================
1. Instalar el copilador SDCC y compilar mediante la siguiente linea dentro del directorio "src":
sdcc -mz80 --oldralloc --code-loc 0x6038 --data-loc 0 --no-std-crt0 crt0_cpc.rel putchar.rel ramon.c

2. Descargar el programa hex2bin y ejecutar la siguiente línea:
hex2bin ramon.ihx

3. Descargar el programa CPCDiskXP y ejecutar:
CPCDiskXP -File ramon.bin -AddAmsdosHeader 6000 -AddToNewDsk ramon_el_ladron.dsk

De esta manera se obtiene un fichero .dsk que se puede ejecutar desde el emulador WinAPE (http://www.winape.net/).

Ejecución
=========
Para ejecutar el juego simplemente hay que cargar el fichero .dsk con WinAPE e introducir run"ramon en la línea de comandos.

Nombre del grupo: Code Monkeys
==============================
- Martin Málaga, Alejandro; talon_amm@hotmail.com
- García Cussó, Fernando ; gcusso@gmail.com  
- García Guilabert, Kevin ; keving282@gmail.com 
- Martínez Vilar, Rubén ;rub3nmv@gmail.com
- Ramírez Bernabéu, Óscar ; graffnak@hotmail.com

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
