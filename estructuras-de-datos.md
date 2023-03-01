# [<font color=blue>Estructuras de datos</font>](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)

Julia cuenta con varias estructuras de datos principales que se utilizan en la programación. A continuación, se describen algunas de las más importantes:
1. [Diccionarios]()
1. [Arreglos]()
1. [Tuplas]()
1. [Conjuntos]()
1. [Tipos Estructurados]()

Estas son solo algunas de las estructuras de datos que se utilizan comúnmente en Julia. Existen otras como matrices dispersas, colas, pilas, entre otras.

## [Diccionarios]()
Los diccionarios son estructuras de datos que se utilizan para almacenar valores asociados con claves. Cada clave debe ser única y se utiliza para acceder a su valor correspondiente. Para crear un diccionario, se usa la sintaxis:

```julia
Dict("clave1" => valor1, "clave2" => valor2, ...)
```

Se puede usar por ejemplo para guardar una lista de contactos o una
lista de calificaciones


```julia
contactos = Dict("Mauro" => "mau777@hotmail.com", "Ivan" => "ivan01@yahoo.com" )
```


```julia
califica = Dict("Josue Panzera" => 6, "Andrea Regalado" => 10, "Diego Octopus" => 8  )
```

En el primer diccionario, se están almacenando correos electrónicos de algunos contactos, mientras que en el segundo se están almacenando calificaciones de algunos estudiantes.

En el caso del diccionario `contactos`, el nombre es la *clave* y el correo es el *valor* asignado

Podemos acceder a un valor especifico si indicamos la *clave* correspondiente


```julia
contactos["Mauro"]
```


```julia
contactos["Ivan"]
```

Es posible remover elementos de un diccionario en Julia utilizando la función `pop!`. Por ejemplo, si se desea eliminar el contacto de `"Ivan"` del diccionario contactos, se puede hacer lo siguiente:


```julia
# Utiliza pop! para remover elementos de un diccionario
pop!(contactos, "Ivan") 
contactos
```

En este caso, se eliminó el contacto de `"Ivan"` y el diccionario resultante ahora solo contiene el contacto de `"Mauro"`.

También es posible agregar elementos a un diccionario utilizando la asignación `=`. Por ejemplo, si se desea agregar el contacto de `"Julia"` al diccionario contactos, se puede hacer lo siguiente:


```julia
# Agrega elementos a un diccionario 
contactos["Julia"] = "jjul2002@gmail.com" 
```


```julia
contactos
```

El valor de una *clave* puede ser cambiado simplemente asignando un nuevo valor a la llave en cuestión:


```julia
contactos["Julia"] = "julia2023@gmail.com"
```


```julia
contactos
```

> Observación: Los diccionarios en Julia no están ordenados. 

Por ejemplo La instrucción
```Julia
contactos[1]
```
es incorrecta ya que no es posible acceder a un valor en un diccionario por su posición numérica.


```julia
contactos[1]
```

En su lugar, debe accederse a un valor en un diccionario por su llave.

## [Arreglos]()

Los arreglos son estructuras de datos que permiten almacenar una colección ordenada de elementos. Se pueden crear arreglos de cualquier tipo de dato en Julia, incluyendo números, caracteres, cadenas de texto, estructuras de datos y funciones. Los arreglos se crean con corchetes `[]` y los elementos se separan con comas, se usa la sintaxis:
Estructura de datos con la siguiente síntaxis:
```Julia
mi_arreglo1 = [ elemento1, elemento2, ....]

mi_arreglo2 = [ elemento1 elemento2 ....]
```

los elementos pueden ser caracteres, cadenas, enteros, flotantes, combinaciones de éstos y más.


```julia
arreglo_caracteres = [ 'a','b','c' ]
```


```julia
arreglo_cadenas = [ "JPG","PNG","GIF" ]
```


```julia
arreglo_enteros = [ 1, 10, 100, 1000 ]
```


```julia
arreglo1_flotantes = [ 1/3, π, 0.52, 1e2 ]
```


```julia
arreglo2_flotantes = [ 1/3 π 0.52 1e2 ]
```


```julia
arreglo_mixto = [ "pan" 14.5 10 ]
```

Note que `arreglo1_flotantes` separado por comas es vector columna mientras que `arreglo2_flotantes` separado por espacios es vector renglón

Un arreglo 2D se genera con arreglos 1D de misma longitud usa `length` para conocer el número de elementos de un arreglo


```julia
Arreglo_2D=[[1, 2, 0] [3, 4, 0]]
```


```julia
length(Arreglo_2D)
```


```julia
Arreglo_1D=[1, 2, 0, 3, 4, 0]
```


```julia
length(Arreglo_1D)
```

El paquete `Latexify` se utiliza para convertir objetos de Julia en código LaTeX que se puede incluir en documentos LaTeX.

Para instalar el paquete debes ejecutar la siguiente línea cambiando primero el tipo de celda:
using Pkg; Pkg.add("Latexify")

```julia
using Latexify
```

El paquete genera una tabla en LaTeX que representa el arreglo:


```julia
latexify(Arreglo_2D)
```


```julia
latexify(Arreglo_1D)
```

Esto es útil para incluir arreglos de datos en informes o artículos escritos en LaTeX.

Podemos obtener el código Latex de la siguiente manera:


```julia
latexify(Arreglo_2D)|> print
```


```julia
latexify(Arreglo_1D)|> print
```

### Algunos comandos útiles para generar arreglos

`ones` es una función en Julia que crea un arreglo de tamaño especificado con todos los elementos establecidos en uno. La sintaxis básica es la siguiente:
```Julia
ones(dim)
```
donde `dim` es una tupla o una serie de enteros separados por comas que especifican la dimensión del arreglo.

Por ejemplo:


```julia
ones(2, 2)
```

devuelve un arreglo de tamaño `2x2` con elementos de tipo `Float64` lleno de unos.

También es posible especificar el tipo de datos de los elementos en el arreglo utilizando el argumento opcional `T`.

Por ejemplo:


```julia
ones(Int64, 2, 2)
```

devuelve un arreglo de tamaño `2x2` con elementos de tipo `Int64` lleno de unos.

`zeros` es una función en Julia que crea un arreglo de tamaño especificado con todos los elementos establecidos en cero. La sintaxis básica es la siguiente:
```Julia
zeros(dim)
```


```julia
zeros(3)
```


```julia
zeros(3, 1)
```


```julia
zeros(3, 4)
```


```julia
zeros(Int64, 3, 4)
```

`rand` es una función en Julia que crea un arreglo de tamaño especificado con números aleatorios con distribución uniforme entre 0 y 1. 

La sintaxis básica es la siguiente:
```Julia
rand(dim)
```

`randn` genera un arreglo de números aleatorios distribuidos según una distribución normal estándar (media 0 y desviación estándar 1).


```julia
rand(6)
```


```julia
rand(4, 4)
```

Podemos especificar el rango donde se toman los números:


```julia
rand(-10:10, 4, 4) 
```

Podemos usar un arreglo arbitrario de donde tomar los elementos:


```julia
rand(['α', 'β', 'γ', 'δ', 'ϵ'], 4, 4) 
```

`LinRange` es una función en Julia que crea un arreglo de valores equiespaciados linealmente en un rango dado. La sintaxis básica es la siguiente:

```Julia
LinRange(inicio, fin, n)
```

Donde `inicio` y `fin` son los límites del rango y `n` es el número de elementos en el arreglo resultante. 

Los elementos están espaciados uniformemente con una separación de `(fin-inicio)/(n-1)`

Por ejemplo:


```julia
#Partición del intervalo [-π,π] de 11 puntos
R = LinRange(-π,π, 11)
```

`collect` es una función en Julia que toma un rango de números y lo convierte en un arreglo. 

Por ejemplo:


```julia
P = collect(R) 
```

`LinRange` es un tipo de dato en Julia que representa una secuencia lineal de valores con un espaciado uniforme entre ellos. Al utilizar la función `LinRange` se obtiene un objeto de tipo `LinRange{start, stop, length}` donde `start` es el valor inicial, `stop` es el valor final, y `length` es la longitud deseada de la secuencia.

Por otro lado, al aplicar la función `collect` sobre un objeto de tipo `LinRange`, se convierte en un arreglo de números con el mismo espaciado entre ellos.


```julia
println(typeof(R)) 
println(typeof(P)) 
```

`fill` es una función que crea un arreglo de tamaño `dims` y llena todos sus elementos con el valor `x`. La sintaxis básica es la siguiente:

```Julia
fill(x, dims...)
```

Por ejemplo:


```julia
fill(π, 3)
```


```julia
fill(Float64(π), 3) #Float64(x) cambia el tipo de π a Float64
```


```julia
fill(Float64(π), 3, 2)
```

La función `vec` en Julia apila las columnas de una matriz en un solo arreglo unidimensional. La sintaxis básica es la siguiente:
```Julia
vec(A)
```
donde `A` es una matriz.

Por ejemplo, si tenemos la siguiente matriz:


```julia
r = rand(3,4)
```

Podemos apilar sus columnas en un solo arreglo usando vec de la siguiente manera:


```julia
vec(r)
```

La función `reshape` permite cambiar la forma o tamaño de un arreglo, siempre y cuando la cantidad total de elementos se mantenga constante. La sintaxis básica es la siguiente:
```Julia
reshape(A, dims)
```
donde `A` es el arreglo que se desea cambiar de forma y `dims` es la tupla que especifica la nueva forma del arreglo. Por ejemplo:


```julia
r
```


```julia
reshape(r,2,6) #cambiamos de una matriz 3×4 a una matriz 2×6
```

El operador de comilla simple `'`  se utiliza para calcular la transpuesta de un arreglo o matriz. Por ejemplo, si `A` es un arreglo o matriz, entonces `A'` devolverá la transpuesta de `A`.

Es importante tener en cuenta que la transposición no modifica el arreglo original, sino que devuelve una nueva matriz transpuesta. Además, para matrices de mayor dimensión, `A'` intercambia los dos primeros índices, es decir, transpone la matriz respecto a su diagonal principal.


```julia
r'
```


```julia
typeof(r')
```

La transposición de una matriz en Julia se representa mediante un tipo especial de matriz llamado `Adjoint`. Este tipo de matriz tiene una representación interna optimizada que es diferente de la representación de una matriz regular transpuesta y se utiliza para realizar operaciones matriciales más eficientes. Por lo tanto, si se toma la transpuesta de una matriz `A` en Julia, el tipo de la matriz resultante será `Adjoint{<tipo_elemento>, <tipo_matriz_original>}`. Al usar el operador transpuesto `'`, Julia devuelve una matriz adjunta en lugar de una matriz transpuesta regular. Sin embargo, cuando se imprime en la consola, se muestra la matriz transpuesta como se esperaría verla matemáticamente.

Al utilizar `'` se obtiene la matriz transpuesta conjugada, lo que en el caso de una matriz real es equivalente a la matriz transpuesta. 

Para obtener la matriz transpuesta real se puede utilizar la función `transpose()` o simplemente `'` dos veces consecutivas, es decir, `r''`:


```julia
transpose(r)
```


```julia
r''
```

Al utilizar `collect()` se convierte el tipo `Adjoint{Float64, Matrix{Float64}}` a `Matrix{Float64}`.


```julia
typeof(collect(r'))
```


```julia
collect(r')
```

## [Tuplas]()

Las tuplas son estructuras de datos que pueden contener cualquier número de elementos de diferentes tipos. A diferencia de los vectores, las tuplas son inmutables, lo que significa que no se pueden cambiar una vez que se han creado. Para crear una tupla, se usa la sintaxis:
```Julia
mi_tupla = (a, b, c)
```

Ejemplo:


```julia
t = ("h", 1, [1, 2, 3], π)
```


```julia
typeof(t)
```

La variable `t` es una tupla que contiene un `String`, un `Int64`, un `Vector{Int64}` y un número irracional `π`. Por lo tanto, el tipo de `t` es `Tuple{String, Int64, Vector{Int64}, Irrational{:π}}`.

Los elementos de una tupla están ordenados por el índice


```julia
t[1]
```


```julia
t[3]
```

Podemos usar los elementos de una tupla, pero no podemos modificarlos.


```julia
t[1]*"ola!"
```


```julia
t[4] = 3.1416
```

El desempaquetamiento de tuplas se refiere a la extracción de los elementos individuales de una tupla y su asignación a variables separadas. En Julia, el desempaquetamiento de tuplas se puede hacer de varias formas.

Una forma de desempaquetar tuplas es usando una asignación múltiple. Por ejemplo, si tenemos la tupla `(1, 2, 3)` y queremos asignar cada elemento a una variable diferente, podemos hacer lo siguiente:


```julia
tupla = (1, 2, 3)
x₁, x₂, x₃ = tupla
```


```julia
x₁
```


```julia
x₂
```


```julia
x₃
```

También podemos desempaquetar solo algunos elementos de una tupla. En este caso, podemos usar un guión bajo `_` para ignorar los elementos que no necesitamos. 

Por ejemplo:


```julia
x₁, _, x₃ = tupla
```

Otra forma de desempaquetar tuplas es usando índices:


```julia
x₂ = tupla[2]
```

También podemos desempaquetar tuplas dentro de otras estructuras de datos, como matrices o vectores. En este caso, usamos la misma sintaxis de asignación múltiple o índices para extraer los elementos de la tupla.

## [Conjuntos]()

Los conjuntos son colecciones no ordenadas de elementos únicos. Se utilizan comúnmente para realizar operaciones de conjuntos, como unión, intersección y diferencia. 
Para crear un conjunto, se usa la sintaxis:
```Julia
Set([a, b, c])
```
donde `a`, `b` y `c` son los elementos que deseas agregar al conjunto.

Crear un conjunto vacío:


```julia
conjunto_vacio = Set()
```

Crear un conjunto con algunos elementos:


```julia
conjunto1 = Set([1, 2, 3, 4, 5])
conjunto2 = Set([3, 4, 5, 6, 7])
```

Unión de dos conjuntos:


```julia
union(conjunto1, conjunto2)  
```

Intersección de dos conjuntos:


```julia
intersect(conjunto1, conjunto2)  
```

Diferencia de dos conjuntos:


```julia
setdiff(conjunto1, conjunto2)
```

Agregar elementos a un conjunto:


```julia
push!(conjunto_vacio, 1)
push!(conjunto_vacio, 2)
push!(conjunto_vacio, 3)
```

Verificar si un elemento está en un conjunto:


```julia
1 in conjunto_vacio  
```


```julia
4 in conjunto_vacio
```

Eliminar un elemento de un conjunto:


```julia
pop!(conjunto_vacio, 1)
```


```julia
conjunto_vacio
```

## [Tipos estructurados]()

Los tipos estructurados se utilizan para definir nuevos tipos de datos personalizados que tienen campos con nombres y tipos específicos. 

Para definir un tipo estructurado, se usa la sintaxis:
```Julia
struct NombreTipo ... end
```
Aquí hay un ejemplo simple de cómo definir un tipo estructurado en Julia:


```julia
struct Persona
    nombre::String
    edad::Int
end
```

En este ejemplo, estamos definiendo un nuevo tipo de datos llamado `Persona`. La estructura `Persona` tiene dos campos: `nombre`, que es una cadena, y `edad`, que es un número entero. Podemos crear una nueva instancia de `Persona` especificando valores para los campos:


```julia
persona1 = Persona("Mario", 33)
```

En este caso, estamos creando una nueva instancia de `Persona` llamada `persona1` con nombre `"Mario"` y edad `33`. Podemos acceder a los campos de `persona1` utilizando la sintaxis de punto:


```julia
println(persona1.nombre)
```


```julia
println(persona1.edad)
```
