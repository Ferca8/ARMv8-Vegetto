# Laboratorio 2: "VC FrameBuffer en QEMU emulando una RPi3" - Grupo 35 - FaMAF (2024)

## Integrantes
 - [Darío Exequiel Trinidad](https://github.com/dariopuntoexe)  
 - [Marcelo Agustín Mancini Pereyra](https://github.com/marcelomancini)  
 - [Fernando Adrián Cabrera Luque](https://github.com/Ferca8)

## Índice
 1. [Introducción](#introducción)
 2. [Dependencias](#dependencias)
 3. [Compilación del proyecto](#compilación-del-proyecto)
 4. [Ejercicio 1: Imagen estática](#ejercicio-1-imagen-estática)
 5. [Ejercicio 2: Animación interactiva con GPIO](#ejercicio-2-animación-interactiva-con-gpio)
 6. [Extras](#extras)

## Introducción
Este laboratorio, impartido por la cátedra de **Organización del Computador** de FaMAF, tiene como objetivo aplicar conceptos de bajo nivel relacionados con la programación en ensamblador ARMv8, la inicialización y uso de periféricos, y la interacción con una estructura FrameBuffer. Estas actividades se desarrollan en el contexto de una plataforma Raspberry Pi 3 emulada en QEMU, permitiendo simular funcionalidades típicas de hardware sin necesidad de equipos físicos.

El laboratorio se centra en dos ejercicios principales: la **generación de una imagen estática** y la **creación de una animación**, ambos implementados en lenguaje ensamblador ARMv8. Cada ejercicio tiene requisitos específicos y debe cumplir con condiciones relacionadas al uso del FrameBuffer y los GPIOs, además de respetar estándares de calidad en el código y el formato de entrega.

## Dependencias
Para poder compilar y ejecutar el proyecto, es necesario tener instaladas las siguientes herramientas:
- Cadena de herramientas **AArch64**: `sudo apt install gcc-aarch64-linux-gnu`
- **QEMU ARM**: `sudo apt install qemu-system-arm`
- **AArch64 GDB** (es el debugger, no es estrictamente necesario para poder ejecutar el proyecto): `sudo apt install gdb-multiarch`

## Compilación del proyecto
Para compilar el laboratorio, tipear las siguientes sentencias en la línea de comandos:
```sh
git clone https://github.com/Ferca8/ARMv8-Vegetto.git
cd odc2024-g35
``` 

## Ejercicio 1: Imagen estática
El código genera una ilustración estática con estilo pixel art de Vegetto, un personaje de la saga Dragon Ball. Se recrea al personaje en una posición previa a combatir, inmerso en un escenario genérico de la serie.  
Para observar tal imagen, una vez dentro del directorio `odc2024-g35`, moverse al directorio de la consigna utilizando:
```sh
cd ejercicio1
make runQEMU
```
Finalmente, para eliminar todos los archivos que deja la ejecución debe utilizarse el comando:
```sh
make clean
```

## Ejercicio 2: Animación interactiva con GPIO
Se mantuvo el mismo diseño empleado en el ejercicio 1 con ligeras modificaciones. Destaca la incorporación de un aura animada alrededor del personaje, la cual simula el aumento de su poder, y el uso de GPIO siendo útiles las teclas ``A``,``S`` y ``D``. Estas teclas permiten alternar entre las distintas transformaciones del personaje:  

- **Estado base**, pulsando la tecla ``A``  
- **Super Saiyajin**, pulsando la tecla ``S``  
- **Super Saiyajin Blue**, pulsando la tecla ``D``  

Si se presiona alguna de las teclas y se la suelta al instante, la animación del aura será breve.  
Si se mantiene presionada alguna de las teclas, la animación del aura persistirá hasta que se decida soltarla.  
Cabe mencionar que ambos elementos están conectados: al momento de interactuar con las teclas tanto el aura como el personaje se verán afectados, cambiando el color de ciertos aspectos como el cabello, ojos, cejas y el mismo halo de luz que lo rodea.  

Para poder observar la animación e interactuar con ella, debe moverse al directorio de la consigna desde `odc2024-g35` utilizando:  
```sh
cd ejercicio2
make runQEMU
```
Luego abrir otra pestaña en la consola para poder interactuar mediante el GPIO, tipeando la secuencia:  
```sh
make runGPIOM
```
A partir de allí, simplemente se puede ir alternando entre `A`, `S` y `D` para moverse entre las distintas transformaciones del personaje.  

En caso de que las indicaciones no fueran suficientemente claras, a continuación se deja un video mostrando el procedimiento correcto a seguir.

[Ejemplo_de_ejecucion.webm](https://github.com/user-attachments/assets/068d7f28-e8a0-458a-9c3f-b00b852cf208)

Igualmente el comando `make clean` limpia todos los archivos generados en la ejecución de la animación.

## Extras
* Como parte del trabajo se pidió relatar alguna historia corta y concisa que se relacione con la imagen generada. En pos de ello, creamos el siguiente relato:
  > *"Ya apartado de la gran ciudad para reducir los daños, Vegetto se ve obligado a incrementar su poder ante un rival inesperado, iluminando el cielo con destellos de energía. No es momento para juegos, una épica batalla por el destino de la Tierra está por desatarse..."*  

* Complementamos tal historia con la voz en español latino del narrador del anime, utilizando una inteligencia artificial llamada [FakeYou](https://fakeyou.com/), y el soundtrack del prólogo de la serie. El resultado final puede visualizarse desde el siguiente link: https://www.youtube.com/watch?v=NXkJ5V0Zfro

* Para una mayor ambientación, colocar el siguiente soundtrack de fondo mientras se manipula el GPIO: https://www.youtube.com/watch?v=UBH79eGE_HY
