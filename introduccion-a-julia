# [<font color=blue>Introducción a Julia</font>](#contenidos) <a name="U1"></a>
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
```Julia
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
```Julia
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

Ejemplos de aplicaciones que utilizan programación procedural en Julia incluyen el procesamiento de datos en lotes y la automatización de tareas.
```Julia
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

# El factorial de 5 (debería ser 120)
factorial(5)  # 120
```
### Comandos básicos
El comando `versioninfo()` es un comando útil en Julia que muestra información sobre la versión de Julia que estás utilizando y la versión de los componentes principales que lo acompañan.

Por ejemplo en la salida de 
```julia 
versioninfo()
```
Obtenemos:
Julia Version 1.8.5
Commit 17cfb8e65e (2023-01-08 06:45 UTC)
Platform Info:
  OS: Windows (x86_64-w64-mingw32)
  CPU: 8 × Intel(R) Core(TM) i7-6820HQ CPU @ 2.70GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-13.0.1 (ORCJIT, skylake)
  Threads: 1 on 8 virtual cores
En este caso, se muestra información sobre la versión de `Julia 1.8.5` que se está ejecutando en un sistema operativo `Windows` con un procesador `Intel Core i7-6820HQ` de 8 núcleos virtuales. Además, se informa sobre la configuración de las bibliotecas matemáticas (`libopenlibm`) y el compilador LLVM (`libLLVM-13.0.1`). También se indica que hay 8 núcleos virtuales disponibles, pero actualmente solo se está utilizando un hilo en esta sesión de Julia.
```Julia
versioninfo()
```
El comando `pwd()` en Julia se utiliza para obtener el directorio de trabajo actual (del inglés, "current working directory").

Cuando se ejecuta `pwd()`, Julia devuelve una cadena de texto que indica la ruta absoluta del directorio en el que se está trabajando actualmente. Por lo general, esto se establece cuando se inicia la sesión de Julia y se puede cambiar con el comando `cd()` (cambiar directorio).

Aquí hay un ejemplo de cómo se puede usar pwd() en Julia:
```Julia
pwd()
```
El comando `readdir()` en Julia se utiliza para obtener una lista de los archivos y subdirectorios contenidos en un directorio específico.

Cuando se ejecuta `readdir()` sin argumentos, devuelve una lista de los archivos y subdirectorios en el directorio de trabajo actual. Si se proporciona un argumento que sea una ruta de directorio, entonces el comando `readdir()` devolverá una lista de los archivos y subdirectorios en el directorio especificado por la ruta.

Aquí hay un ejemplo de cómo se puede usar `readdir()` en Julia:
```Julia
readdir()
```
## [Asignación de Valores](#contenidos) <a name="U1S0"></a>
Para asignar un valor a una variable, simplemente escribe el nombre de la variable, seguido del signo `=` y luego el valor que deseas asignar. 

Aquí un ejemplo:
```Julia
a = 5.1
a # 5.1
```
En Julia se puede usar el punto y coma `;` para separar múltiples instrucciones en una sola línea.

Es importante tener en cuenta que aunque se pueden poner varias instrucciones en la misma línea separadas por `;`, esto puede hacer que el código sea más difícil de leer y mantener. Por lo general, es mejor poner cada instrucción en una línea separada para hacer el código más legible.
```Julia
b = a + 1; c = 5.2a
```
Julia muestra el valor asignado a la última variable
## [Comentarios](#contenidos) <a name="U1S1"></a>
