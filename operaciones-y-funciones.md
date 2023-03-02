# [<font color=blue>Operaciones y Funciones</font>](https://github.com/mrnolasco/julia-para-comenzar#introducci%C3%B3n-a-la-programaci%C3%B3n-en-julia-1)
* [Operaciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-)
    * [Operaciones con variables numéricas](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-con-variables-num%C3%A9ricas-)
    * [Operaciones entre arreglos de números](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-entre-arreglos-de-n%C3%BAmeros-)
    * [Operaciones entre matrices](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-entre-matrices-)
    * [Operaciones entre cadenas](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-entre-cadenas-)
* [Funciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#funciones-)
    * [Algunas funciones matemáticas predefinidas](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#algunas-funciones-matem%C3%A1ticas-predefinidas-)
    * [Algunas funciones para arreglos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#algunas-funciones-para-arreglos-)
    * [Define tus propias funciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#define-tus-propias-funciones-)
    * [Map](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#map-)
    * [Broadcasting](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#broadcasting-)
    * [Sintaxis general](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#sintaxis-general-)
    * [Conversiones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#conversiones-)

Las operaciones en Julia funcionan de manera similar a otros lenguajes de programación. 

Podemos realizar operaciones con variables numéricas, arreglos de números, matrices y cadenas.

## [Operaciones]([#contenidos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones)) 

### [Operaciones con variables numéricas]([#contenidos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones))

Podemos realizar las operaciones aritméticas básicas, como la suma (`+`), la resta (`-`), la multiplicación (`*`) y la división (`/`) en Julia. También podemos usar los operadores de potencia (`^`) y residuo (`%`).



Por ejemplo:

La fórmula cuadrática


```julia
a = 1; b = 5; c = 6
s = ( -b + (b^2 - 4a*c)^0.5 )/2a
```

Nota que basta escribir 

```julia 
   2variable
``` 
en vez de 

```julia 
   2*variable
```
   
lo mismo para cualquier otra cifra 

### [Operaciones entre arreglos de números](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones)

Podemos realizar operaciones entre arreglos de números en Julia. 

En este caso, las operaciones se realizan elemento por elemento.

Síntaxis para operaciones elemento a elemento


- exponenciación  
```julia 
arreglo1.^2
```

- multiplicación  
```julia 
arreglo1 .* arreglo2
```

- división 
```julia 
arreglo1 ./ arreglo2
```

- residuo 

```julia 
arreglo1 .% arreglo2
```

- `+` y `-`   no requieren `.`

Por ejemplo:

Potencia elemento a elemento


```julia
nume1 = [101.1 253.3 π 3//4]
```


```julia
nume1.^2
```

### [Operaciones entre matrices](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones)

Podemos realizar operaciones entre matrices en Julia. 

En este caso, las operaciones se realizan elemento por elemento.

Síntaxis para operaciones entre matrices

- Transpuesta conjugada
```julia 
 arreglo2D'
 ```
 
- Potencias de matrices
```julia 
 arreglo2D^2
``` 

- Producto de matrices

  NOTA: Los tamaños deben empatar
  
```julia 
 arreglo2D * arreglo2D

 arreglo2D * arreglo1D
```
 


Por ejemplo:

Matriz de rango uno


```julia
u = collect(1:15);
```


```julia
v = collect(2:2:30);
```


```julia
C = u*v'
```

Por ejemplo:

Producto punto (matricial)


```julia
v'*u
```

Por ejemplo:

Polinomio de matrices


```julia
C^3 + 2C^2 + 5C .+ 6 
```

Por ejemplo:

- Resuelve sistema de ecuaciones lineales
 ```julia 
 arreglo2D \ arreglo1D
 ```

Sistema de ecuaciones lineales $$Ax=b$$


```julia
A = rand(5,5)
b = ones(5)
x = A\b
```

### [Operaciones entre cadenas](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones) 

En Julia se pueden realizar operaciones entre cadenas de texto, tal como la concatenación y la repetición:

concatenación

```julia 
cadena1 * cadena2 * cadena3
```

repite y concatena

```julia 
cadena^2
```

Es importante mencionar que en Julia, las cadenas de texto se tratan como vectores de caracteres, por lo que se pueden utilizar muchas de las mismas funciones y operaciones que se utilizan con vectores.


```julia
cadena = "abc"
repetido = cadena^3  
```

## [Funciones]([#contenidos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones)) 

Son objetos que reciben una tupla de argumentos y devuelven un valor.

### [Algunas funciones matemáticas predefinidas](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones) 

Julia tiene una variedad de funciones matemáticas predefinidas. Algunas de estas funciones son:

trigonométricas como `sin`, `cos`, `tan`, `asin`,

exponencial `exp`, logarítmo `log`, 

raíz cuadrada `sqrt` , valor absoluto `abs`,
 
piso `floor`, techo `ceil` y muchas más


### [Algunas funciones para arreglos](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones) 

Julia también tiene una variedad de funciones para trabajar con arreglos. 

Algunas de estas funciones incluyen `sum()`, `prod()`, `minimum()`, `maximum`, que permiten calcular, respectivamente, la suma, el producto, el valor mínimo y el valor máximo de los elementos de un arreglo o `length()` y `sort()` para obtener la longitud de un arreglo y para ordenar los elementos de un arreglo, respectivamente. 


```julia
sum([5, 3, 4, 1])
```


```julia
length([5, 3, 4, 1])
```


```julia
sort([5, 3, 4, 1])
```


```julia
prod([5, 3, 4, 1])
```


```julia
minimum([5, 3, 4, 1])
```


```julia
maximum([5, 3, 4, 1])
```

### [Define tus propias funciones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones)

Es posible definir funciones en Julia especificando una fórmula matemática para el cálculo de su resultado. 

Sintaxis para funciones especificadas por fórmula:

```julia 
nombre_función(variable1) = fórmula en variable1 
```

Por ejemplo:


```julia
f₁(x) = x^2 +1 
```


```julia
f₁(10)
```

Sintaxis para funciones anónimas:

```julia
variable1 -> fórmula en variable1
```

Por ejemplo:


```julia
f₂ = x -> x^2 
```


```julia
f₂(10)
```

La función `f₁` se define utilizando la sintaxis de función normal (`f₁(x) = x^2`), donde el nombre de la función es `f₁(x)` y toma un argumento `x`. Esta sintaxis es más común en la definición de funciones más complejas o funciones que se usarán en varias partes del código.

La función `f₂` se define utilizando una sintaxis de función anónima `(x -> x^2)` que crea una función sin nombre que toma un argumento `x` y devuelve el cuadrado de `x`. Esta sintaxis se utiliza comúnmente para definir funciones simples en una sola línea.

Al definir una función, se pueden utilizar variables adicionales en la fórmula, siempre y cuando se definan antes de llamar a la función. 

También es importante tener en cuenta que si cambia el valor de una variable utilizada en la función, esto puede afectar el resultado que devuelve la función.

Por ejemplo:


```julia
c₁ = 2; c₂ = 10
f₃(x) = x^c₁ + c₂
f₃(5.5)
```

Si cambia el valor de una variable en la función,

también cambia el resultado que regresa


```julia
c₂ = 20
f₃(5.5)
```

Trata de aplicar la  función `f₃` al  arreglo `[-1, 0, 1]`


```julia
f₃([-1, 0, 1])
```

### [Map](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones) 

`map` es una función de orden superior en Julia que devuelve un nuevo arreglo con los resultados de aplicar una `función` a cada elemento del `iterable`.

La sintaxis es:
```Julia
map(función, iterable)
```
donde `función` es la función que se aplicará a cada elemento del `iterable`, y el `iterable` se recorrerá elemento por elemento.


```julia
map(f₃, [-1, 0, 1])
```

`map` también puede recibir funciones anónimas:


```julia
map(x -> x^2, 1:10)
```

`map` es útil porque permite aplicar una función de forma vectorizada, en lugar de tener que iterar manualmente sobre cada elemento del iterable. Esto puede ser más eficiente en términos de velocidad y memoria, especialmente para iterables grandes.

Ejemplo:

Por cada elemento en la tupla de números `(-5, 0, π)` usa la aplicación:

$$ x \mapsto 
\begin{cases}
 \sqrt x + 1, & \text{si } x >0; \\
 x +1, & \text{en otro caso}
\end{cases} $$


```julia
map(x -> (x > 0) ? √x + 1 : x + 1, (-5, 0, π)) 
```

### [Broadcasting](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones) 

`Broadcasting` es una extensión de funciones para trabajar con elementos de matrices y vectores de manera más eficiente.
Extiende las funciones para que reciban tuplas o arreglos usando la sintaxis:

Con la sintaxis
```julia 
función.(A)
```
se aplicará la función `f` a cada elemento de `A` en lugar de aplicarla a la matriz en su totalidad. Esto evita la necesidad de usar ciclos explícitos.


Por ejemplo:

Evalua los elementos del arreglo

```julia
a = [-5  -1//2  2.5  1e4]
```
usando la aplicación $x \mapsto \sqrt|x| +1$ 


```julia
array = [-5  -1//2  2.5  1e4]
```


```julia
f = x -> sqrt(abs(x)) +1
```


```julia
f.(array)
```

### [Sintaxis general](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones)

Sintaxis más general para funciones

```julia 
 function nombre(variable1::Tipo,variable2::Tipo)

 return variable_salida
end
```

- Si el tipo de variable no se especifica, Julia tratara de inferirlo.

Ejemplo:

Una función sencilla puede dar lugar a diferentes operaciones con base al tipo de argumentos


```julia
function mi_potencia(A,n)
    pA = A^n
   return pA 
end
```

Si la función se invoca con una matriz cuadrada y un número como argumentos, se comportará como un producto matricial:


```julia
mi_potencia(rand(3,3),3)
```

Raíz cuadrada de una matriz 


```julia
mi_potencia(rand(3,3),1/2)
```

Pero si se invoca con dos cadenas como argumentos, se comportará como una concatenación de cadenas:

Concatenación elemento a elemento de arreglos de cadenas


```julia
mi_potencia.(rand(["a","b","c","d"],2,2),3)
```

### [Conversiones](https://github.com/mrnolasco/julia-para-comenzar/blob/main/operaciones-y-funciones.md#operaciones-y-funciones) 
En Julia, es posible convertir valores de un tipo de dato a otro mediante las funciones de conversión. 

Algunas de las funciones de conversión disponibles son:

 * `parse(T, str)`: convierte una cadena `str` en el tipo de dato `T`.
 * `convert(T, x)`: convierte el valor `x` al tipo de dato `T`.
 * `float(x)`: convierte `x` a un número de punto flotante de doble precisión (tipo `Float64`).
 * `round(x)`: redondea `x` al entero más cercano.
  
Ejemplos:


```julia
println(typeof("123"))
parse(Int, "123") # cadena ⟶ entero
```


```julia
println(typeof(123))
convert(Float64, 123) # entero ⟶ flotante
```


```julia
println(typeof(π))
float(π) # irracional ⟶ flotante de 64 bits
```


```julia
println(typeof(π))
Float32(π) # irracional ⟶ flotante de 32 bits
```


```julia
println(typeof(21/5))
round(21/5) # flotante ⟶ al entero más cercano
```


```julia
println(typeof(14.5))
Rational(14.5) # flotante ⟶ racional
```


```julia
println(typeof(1501.123))
string(1501.123) # Flotante ⟶ Cadena
```


```julia
Int64(floor(-1.8)) # Función Piso
```


```julia
Int64(ceil(-1.8)) # Función Techo
```

En Julia, puedes pedir valores al usuario utilizando la función `readline()`, que espera a que el usuario ingrese un valor desde la consola y lo devuelve como una cadena de caracteres. 

Luego, si necesitas un valor numérico, puedes convertir esa cadena en un número utilizando las funciones de conversión de tipo, como `parse()`. 

Por ejemplo, si deseas solicitar un número entero al usuario, puedes hacer lo siguiente:


```julia
println("Ingresa un número entero:")
entrada = readline()
numero = parse(Int, entrada)
```
