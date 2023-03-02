# julia-para-comenzar
Curso básico para comenzar a programar en Julia
## <font color=blue>Instalación de Julia</font>
* Descargue la versión 1.8.5 de Julia o superior, según corresponda al sistema operativo que se esté utilizando (Windows, MacOS o Linux).

    https://julialang.org/

* Abra Julia y ejecute los siguientes comandos:

```Julia
using IJulia;
notebook()
```
* Acepte la instalación de IJulia y Jupyter si es necesario.
* Después de la instalación, se ejecutará automáticamente una libreta de Jupyter.
* Para iniciar Julia con la libreta de Jupyter, puede hacerlo desde el icono del escritorio o ejecutando el comando using `using IJulia; notebook()` en una consola o terminal de Julia.

## <font color=blue>[Introducción a la Programación en Julia](https://github.com/mrnolasco/julia-para-comenzar/blob/main/Notebook%2001%20-%20Introducci%C3%B3n%20a%20la%20Programaci%C3%B3n%20en%20Julia.ipynb)</font>

* En esta primera sección, te familiarizarás con los conceptos básicos de programación en Julia. Aprenderás acerca de la asignación de valores, los tipos de variables, las estructuras de datos, los condicionales y los ciclos. Además, conocerás las operaciones y funciones, incluyendo las operaciones con variables numéricas, los arreglos de números, matrices y cadenas, y cómo definir tus propias funciones. También cubriremos el uso de map, broadcasting y conversiones en Julia. Al final, encontrarás una sección de ejercicios que te ayudarán a consolidar los conocimientos adquiridos.
<a name="contenidos"></a>
# <font color=blue>Introducción a la Programación en Julia</font>
1. [Introducción a Julia](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#introducci%C3%B3n-a-julia)
    * [Introducción](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#introducci%C3%B3n-a-julia-)
    * [Comandos Básicos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#comandos-b%C3%A1sicos)
    * [Asignación de Valores](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#asignaci%C3%B3n-de-valores)
    * [Comentarios](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#comentarios)
    * [Caracteres Unicode](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#caracteres-unicode)
    * [Modo de Ayuda en la Consola](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#modo-de-ayuda-en-la-consola)
    * [Tipo de Variables](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#tipo-de-variables)
    * [Cadenas de caracteres](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#cadenas-de-caracteres)
    * [Impresión de variables](https://github.com/mrnolasco/julia-para-comenzar/blob/main/introduccion-a-julia.md#impresi%C3%B3n-de-variables)
2. [Estructuras de datos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/estructuras-de-datos.md#estructuras-de-datos)
    * [Diccionarios](https://github.com/mrnolasco/julia-para-comenzar/blob/main/estructuras-de-datos.md#diccionarios)
    * [Arreglos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/estructuras-de-datos.md#arreglos)
    * [Tuplas](https://github.com/mrnolasco/julia-para-comenzar/blob/main/estructuras-de-datos.md#tuplas)
    * [Conjuntos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/estructuras-de-datos.md#conjuntos)
    * [Tipos Estructurados](https://github.com/mrnolasco/julia-para-comenzar/blob/main/estructuras-de-datos.md#tipos-estructurados)
3. [Condicionales y Ciclos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#condicionales-y-ciclos)
    * [Condicionales](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#condicionales)
        * [¿está o no está?](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#est%C3%A1-o-no-est%C3%A1)
        * [Comparaciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#comparaciones)
        * [Operadores lógicos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#operadores-l%C3%B3gicos)
        * [If, Else, Elseif](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#if-else-elseif)
    * [Ciclos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#ciclos)
        * [While](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#while)
        * [For](https://github.com/mrnolasco/julia-para-comenzar/blob/main/condicionales-y-ciclos.md#for)      
4. [Operaciones y Funciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones)
    * [Operaciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-)
        * [Operaciones con variables numéricas]()
        * [Operaciones entre arreglos de números]()
        * [Operaciones entre matrices]()
        * [Operaciones entre cadenas]()
    * [Funciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#funciones-)
        * [Algunas funciones matemáticas predefinidas]()
        * [Algunas funciones para arreglos]()
        * [Define tus propias funciones]()
        * [Map]()
        * [Broadcasting]()
        * [Sintaxis general]()
        * [Conversiones]()
5. [Ejercicios](https://github.com/mrnolasco/julia-para-comenzar/blob/main/ejercicios-nb1.md)
