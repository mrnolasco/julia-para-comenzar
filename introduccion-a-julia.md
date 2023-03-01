# [<font color=blue>Introducción a Julia</font>](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
* Julia es un lenguaje de programación de alto nivel y alto rendimiento diseñado para la computación numérica y científica.

* Fue lanzado en 2012 y combina una sintaxis moderna y amigable con una velocidad comparable a la de C.

* Julia es de código abierto y cuenta con una amplia biblioteca de herramientas y paquetes para una variedad de aplicaciones científicas. 

* Su enfoque en la velocidad y la facilidad de uso lo convierten en una excelente opción para aquellos que trabajan en investigación y ciencia de datos.

> Julia es un lenguaje de programación que admite múltiples paradigmas, incluidos la programación orientada a objetos, la programación funcional y la programación por procedimientos. 

* De hecho, una de las características más destacadas de Julia es su capacidad para mezclar estos paradigmas en un solo programa de manera efectiva, lo que permite a los programadores elegir la mejor forma de resolver un problema en particular. 

### Programación orientada a objetos (POO): 
Este paradigma se centra en la creación de objetos que contienen datos y métodos que operan sobre esos datos. 

En Julia, los objetos son instancias de tipos abstractos o concretos, y se pueden definir estructuras de datos personalizadas con el uso de estructuras de tipo, constructores y métodos. 

Ejemplos de aplicaciones que utilizan POO en Julia incluyen la creación de simulaciones físicas o modelos de objetos del mundo real.

```julia
# Definir un tipo abstracto llamado Animal
abstract type Animal end

# Definir un tipo concreto llamado Cat que es un subtipo de Animal
struct Cat <: Animal
    name::String
end

# Definir un tipo concreto llamado Dog que es un subtipo de Animal
struct Dog <: Animal
    name::String
end

#= Definir una función llamada speak que toma un argumento de tipo 
Animal y devuelve un saludo con el nombre del animal
=#
speak(a::Animal) = "Hello, my name is $(a.name)"

# Crear un objeto Cat con el nombre "Whiskers"
cat = Cat("Whiskers")

# Crear un objeto Dog con el nombre "Fido"
dog = Dog("Fido")

# Llamar a la función speak con el objeto Cat y imprimir el resultado
println(speak(cat))  # "Hello, my name is Whiskers"

# Llamar a la función speak con el objeto Dog y imprimir el resultado
println(speak(dog))  # "Hello, my name is Fido"
```

- Este código define un tipo abstracto llamado `Animal`, que es la superclase de dos tipos concretos llamados `Cat` y `Dog`. Cada objeto `Cat` y `Dog` tiene un atributo `name` que almacena el nombre del animal.

- La función `speak` es polimórfica, lo que significa que toma un objeto de cualquier tipo que sea un subtipo de `Animal`. La función devuelve una cadena de saludo con el nombre del animal.

- Luego, el código crea un objeto `Cat` con el nombre `"Whiskers"` y un objeto `Dog` con el nombre `"Fido"`. Luego, llama a la función `speak` con cada objeto y usa la función `println` para imprimir los resultados.

### Programación funcional: 
Este paradigma se centra en la creación de funciones puras que no tienen efectos secundarios y producen los mismos resultados cada vez que se las llama con los mismos argumentos. 

En Julia, se pueden crear funciones puras con el uso de funciones anónimas, funciones de orden superior y operaciones de mapeo y reducción. 

Ejemplos de aplicaciones que utilizan programación funcional en Julia incluyen el procesamiento de señales, el procesamiento de imágenes y el análisis estadístico.

```julia
# Definir una función llamada square que toma un número y devuelve su cuadrado
square(x) = x^2

# Crear una matriz de números
numbers = [1, 2, 3, 4, 5]

# Aplicar la función square a cada elemento de numbers usando la función map y almacenar los resultados en otra matriz
squares = map(square, numbers)

# Calcular la suma de los elementos de la matriz de cuadrados usando la función reduce
sum_squares = reduce(+, squares)

# Imprimir la suma de los cuadrados
println(sum_squares)  # 55
```
- En este código, la función `square` toma un número y devuelve su cuadrado.
- Luego, el código crea una matriz llamada `numbers` que contiene los números enteros del 1 al 5. 
- La función `map` se utiliza para aplicar la función `square` a cada elemento de la matriz `numbers`, y los resultados se almacenan en una nueva matriz llamada `squares`.
- La función `reduce` se utiliza para sumar los elementos de la matriz `squares`. La función `+` se pasa como el primer argumento a `reduce` para indicar que se debe sumar los elementos. El segundo argumento es la matriz de cuadrados.
- Finalmente, la función `println` se utiliza para imprimir el resultado de la suma de cuadrados, que es 55 en este caso.

### Programación por procedimientos: 
Este paradigma se centra en la creación de secuencias de instrucciones que se ejecutan en orden para resolver un problema. 

En Julia, se pueden crear programas por procedimientos con el uso de estructuras de control de flujo, como bucles y condicionales, y funciones que operan sobre datos estructurados. 

Ejemplos de aplicaciones que utilizan programación por procedimientos en Julia incluyen el procesamiento de datos en lotes y la automatización de tareas.
```julia
"""
    factorial(n)

Devuelve el factorial de n.

# Ejemplo
```julia
julia> factorial(5)
120
"""
function factorial(n)
    # Inicializar una variable llamada resultado con el valor 1
    result = 1
    # Hacer un bucle for que recorre los enteros del 1 al n
    for i in 1:n
        # Multiplicar el resultado actual por i y almacenar el nuevo valor en resultado
        result *= i
    end
    # Devolver el resultado final
    return result
end
```
```julia
# El factorial de 5 (debería ser 120)
factorial(5)  # 120
```

### (Comandos básicos](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
El comando `versioninfo()` es un comando útil en Julia que muestra información sobre la versión de Julia que estás utilizando y la versión de los componentes principales que lo acompañan.

Por ejemplo en la salida de 
```julia 
versioninfo()
```
Obtenemos:
```
Julia Version 1.8.5
Commit 17cfb8e65e (2023-01-08 06:45 UTC)
Platform Info:
  OS: Windows (x86_64-w64-mingw32)
  CPU: 8 × Intel(R) Core(TM) i7-6820HQ CPU @ 2.70GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-13.0.1 (ORCJIT, skylake)
  Threads: 1 on 8 virtual cores
```
En este caso, se muestra información sobre la versión de `Julia 1.8.5` que se está ejecutando en un sistema operativo `Windows` con un procesador `Intel Core i7-6820HQ` de 8 núcleos virtuales. Además, se informa sobre la configuración de las bibliotecas matemáticas (`libopenlibm`) y el compilador LLVM (`libLLVM-13.0.1`). También se indica que hay 8 núcleos virtuales disponibles, pero actualmente solo se está utilizando un hilo en esta sesión de Julia.
```julia
versioninfo()
```
El comando `pwd()` en Julia se utiliza para obtener el directorio de trabajo actual (del inglés, "current working directory").

Cuando se ejecuta `pwd()`, Julia devuelve una cadena de texto que indica la ruta absoluta del directorio en el que se está trabajando actualmente. Por lo general, esto se establece cuando se inicia la sesión de Julia y se puede cambiar con el comando `cd()` (cambiar directorio).

Aquí hay un ejemplo de cómo se puede usar pwd() en Julia:
```julia
pwd()
```
El comando `readdir()` en Julia se utiliza para obtener una lista de los archivos y subdirectorios contenidos en un directorio específico.

Cuando se ejecuta `readdir()` sin argumentos, devuelve una lista de los archivos y subdirectorios en el directorio de trabajo actual. Si se proporciona un argumento que sea una ruta de directorio, entonces el comando `readdir()` devolverá una lista de los archivos y subdirectorios en el directorio especificado por la ruta.

Aquí hay un ejemplo de cómo se puede usar `readdir()` en Julia:
```julia
readdir()
```
## [Asignación de Valores](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
Para asignar un valor a una variable, simplemente escribe el nombre de la variable, seguido del signo `=` y luego el valor que deseas asignar. 

Aquí un ejemplo:
```julia
a = 5.1 
```
En Julia se puede usar el punto y coma `;` para separar múltiples instrucciones en una sola línea.

Es importante tener en cuenta que aunque se pueden poner varias instrucciones en la misma línea separadas por `;`, esto puede hacer que el código sea más difícil de leer y mantener. Por lo general, es mejor poner cada instrucción en una línea separada para hacer el código más legible.
```julia
b = a + 1; c = 5.2a #26.52
```
Julia muestra el valor asignado a la última variable
## [Comentarios](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
Para poner comentarios de una línea ponga `#` y luego el texto.

Cualquier texto que siga al símbolo `#`	 en una línea se considera un comentario y se ignora durante la ejecución del código. Los comentarios son útiles para explicar el propósito de un código, documentar su uso o aclarar partes del código que pueden ser confusas.
```julia
# Mi primer comentario
```
En Julia se pueden agregar comentarios multilínea utilizando la sintaxis `#=` y `=#`.

La sintaxis `#=` se utiliza para iniciar un bloque de comentarios multilínea, y la sintaxis `=#` se utiliza para terminar el bloque de comentarios.
```julia
#= 
Este es un comentario
que se extiende
a varias líneas 
=#
```
## [Caracteres Unicode](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
En Julia, se pueden utilizar caracteres Unicode para escribir fórmulas matemáticas y otros símbolos especiales. Esto hace que el código sea más legible y fácil de entender.

Para insertar un carácter Unicode en el código, se puede utilizar el comando `\` seguido del nombre del símbolo y luego presionar la tecla `TAB`. Julia completará automáticamente el nombre del símbolo y lo convertirá en el símbolo correspondiente.
> `\comando` + `TAB`

Aquí hay algunos ejemplos de comandos Unicode que se pueden utilizar en Julia:

- `\alpha` + `TAB` $\quad\longrightarrow\quad\alpha$
- `\beta` + `TAB` $\quad\longrightarrow\quad\beta$
- `\theta` + `TAB`  $\quad\longrightarrow\quad\theta$
- `\pi` + `TAB` $\quad\longrightarrow\quad\pi$
- `\sqrt` + `TAB` $\quad\longrightarrow\quad\sqrt{}$
- `\int` + `TAB` $\quad\longrightarrow\quad\int{}$
- `\sum` + `TAB` $\quad\longrightarrow\quad\sum{}$
- `\infty` + `TAB` $\quad\longrightarrow\quad\infty$

```julia
\alpha   # presiona tecla TAB justo después del comando
```
Además, podemos usar subíndices y super índices para nombrar las variables

Para el subíndice usamos
> `\_` + `2` + `TAB`
mientras que para el superíndice 
> `\^` + `2` + `TAB`
```julia
α\_i   # presiona tecla TAB justo después del comando
```
```julia
α\^2   # presiona tecla TAB justo después del comando
```

## [Modo de Ayuda en la Consola](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
En Julia se puede obtener información sobre una función o comando utilizando el signo de interrogación (`?`) seguido del nombre de la función o comando.

Se muestra información del comando y en ocasiones un ejemplo de como usarlo
```julia
?+
```
```
search: +

+(x, y...)
Addition operator. x+y+z+... calls this function with all arguments, i.e. +(x, y, z, ...).

Examples
julia> 1 + 20 + 4
25

julia> +(1, 20, 4)
25
dt::Date + t::Time -> DateTime
The addition of a Date with a Time produces a DateTime. The hour, minute, second, and millisecond parts of the Time are used along with the year, month, and day of the Date to create the new DateTime. Non-zero microseconds or nanoseconds in the Time type will result in an InexactError being thrown.

La diferencia principal entre estos dos enfoques es que el operador + es una forma abreviada de llamar a la función + con dos argumentos, mientras que +() es una forma explícita de llamar a la función + con cualquier cantidad de argumentos. Es decir, x + y + z es equivalente a +(x, y, z).

La expresión dt::Date + t::Time -> DateTime especifica que es posible sumar fechas y horas en Julia, y que el resultado será un objeto de tipo DateTime que combina ambas.
```
La diferencia principal entre estos dos enfoques es que el operador `+` es una forma abreviada de llamar a la función `+` con dos argumentos, mientras que `+()` es una forma explícita de llamar a la función `+` con cualquier cantidad de argumentos. Es decir, `x + y + z` es equivalente a `+(x, y, z)`.

La expresión `dt::Date + t::Time -> DateTime` especifica que es posible sumar fechas y horas en Julia, y que el resultado será un objeto de tipo `DateTime` que combina ambas.
```julia
using Dates

# Crear un objeto Date y un objeto Time
d = Date(2023, 2, 14)
t = Time(12, 30, 0)

# Sumar los objetos Date y Time para obtener un objeto DateTime
dt = d + t

# Imprimir el resultado
println(dt)
```
## [Tipo de Variables](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
En Julia, se puede utilizar el comando `typeof` para conocer el tipo de una variable. 

La sintaxis es la siguiente:
```julia 
typeof(x)
```
donde `x` es la variable que queremos conocer su tipo.
```julia
?typeof
```
```
search: typeof typejoin TypeError

typeof(x)
Get the concrete type of x.

See also eltype.

Examples
julia> a = 1//2;

julia> typeof(a)
Rational{Int64}

julia> M = [1 2; 3.5 4];

julia> typeof(M)
Matrix{Float64} (alias for Array{Float64, 2})
```
```julia
typeof(d) # Date
```
```julia
typeof(t) # Time
```
```julia
typeof(dt) # DateTime
```
```julia
typeof(100) # Int64
```
```julia
typeof(1000//10) # Rational{Int64}
```
```julia
typeof(1f20) # Float32
```
```julia
typeof(100.0 ) # Float64
```
```julia
typeof(1e2) # Float64
```
```julia
typeof(100+0im) # Complex{Int64}
```
## [Cadenas de caracteres](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
En Julia, los caracteres se escriben entre comillas simples (`' '`):
```julia
caracter='s'
typeof(caracter) # Char
```
mientras que las cadenas de texto se escriben entre comillas dobles (`" "`):
```julia
c = "esto es una cadena"
typeof(c) # String
```
Es importante tener en cuenta que las cadenas de texto en Julia son inmutables, es decir, no se pueden cambiar una vez que se han definido. Sin embargo, es posible construir nuevas cadenas a partir de las existentes utilizando diversas funciones y operaciones en cadenas, como la concatenación, la división y la eliminación de caracteres.

Además, los caracteres y las cadenas de texto se pueden manipular y comparar utilizando operaciones y funciones específicas de Julia para manipular texto.

En Julia se puede acceder a los elementos de una cadena de texto utilizando su índice:
- en Julia el primer índice es 1
- usa `end` para referirte al último índice
- podemos seleccionar los carácteres con un rango de indices
```julia
c[1] # 'e': ASCII/Unicode U+0065 (category Ll: Letter, lowercase)
```
```julia
c[end] # 'a': ASCII/Unicode U+0061 (category Ll: Letter, lowercase)
```
```julia
c[1:3] # "est"
```
En Julia puedes concatenar cadenas con el operador `*`. 

Aquí te muestro algunos ejemplos:
```julia
"Hola " * "mundo" # "Hola mundo"
```
```julia
s1 = "Julia" # "Julia"
```
```julia
s2 = " es un lenguaje de programación." # " es un lenguaje de programación."
```
```julia
s1 * s2 # "Julia es un lenguaje de programación."
```
También puedes usar la función `string()` para concatenar cadenas o cualquier otro tipo de variable:
```julia
string("El número es ", 42) "El número es 42"
```
**Si concatenas dos caracteres, ¿qué obtienes?**
Si concatenas dos caracteres en Julia, obtendrás una cadena de longitud 2.
```julia
caracter1='m'
caracter2='n'
caracter1*caracter2 #"mn"
```
```julia
typeof(caracter1*caracter2) # String
```
usa `length` para conocer el tamaño de una cadena
```julia
length(caracter1*caracter2) # 2
```
## [Impresión de variables](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
Usa el comando `println`  para mostrar el valor de una variable
```julia
α = 1/3
β = α + 1 
println(α) # 0.3333333333333333
```
Podemos mostrar cadenas junto con el valor de una variable usando la síntaxis
```julia
println("texto $variable")
```
Use `\n` dentro de la cadena para agregar un salto de línea:
```julia
println("El valor de α es $α\nEl valor de β es $β") 
```
```
El valor de α es 0.3333333333333333
El valor de β es 1.3333333333333333
```
El comando `@sprintf` permite controlar el formato de una cadena que incluye valores numéricos y puede ser utilizado en conjunto con `println` para imprimir la cadena formateada en la salida estándar.

Por ejemplo:
```julia
using Printf

γ = 139;
s=@sprintf "entero = %d\nflotante1 = %1.3e\nflotante2 = %.2f" γ α α;

println(s)
```
```
entero = 139
flotante1 = 3.333e-01
flotante2 = 0.33
```
Donde:
- `%d` indica que se debe imprimir el valor como un número entero.
- `%.2f` indica que se debe imprimir el valor como un número de punto flotante con dos decimales después del punto.
- `%1.3e` indica que se utilizará notación científica y que se mostrarán 3 cifras decimales.
