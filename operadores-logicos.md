### [Operadores lógicos](#contenidos) <a name="U3S1S3"></a>

En Julia, los operadores lógicos son `&&` para el operador "y" (and) y `||` para el operador "o" (or).

También se puede usar la sintaxis de palabras clave `and` y `or` en lugar de los operadores `&&` y `||`, respectivamente.

<font color = blue>**Y**</font>

El operador "y" (`&&`) devuelve `true` si y solo si ambas expresiones que están a ambos lados del operador son verdaderas. De lo contrario, devuelve `false`.

sintaxis
```julia
(condición1) && (condición2) && (condición3)

(condición1) & (condición2) & (condición3)
```

En Julia, `&` y `&&` son operadores lógicos de "y" (and), pero tienen algunas diferencias en su comportamiento.

`&` evalúa ambas condiciones, independientemente de si la primera es suficiente para determinar el resultado. Por ejemplo, si se tiene `cond1 & cond2` y `cond1` es falso, de todas formas se evalúa `cond2`.

Por otro lado, `&&` utiliza un cortocircuito, es decir, si la primera condición es suficiente para determinar el resultado, no se evalúa la segunda. Por ejemplo, si se tiene `cond1 && cond2` y `cond1` es falso, `cond2` no se evalúa ya que el resultado final de la expresión será falso.

Ejemplo:

Pregunta si 9 y 28 están en el arreglo `C` con `&`


```julia
( 9 ∈ C ) & ( 28 ∈ C )
```

<font color = blue>**O**</font>

El operador "o" (`||`) devuelve `true` si al menos una de las expresiones a ambos lados del operador es verdadera. De lo contrario, devuelve `false`.

1ra sintaxis
```julia
(condición1) || (condición2) || (condición3)
(condición1) | (condición2) | (condición3)
```

2da sintaxis
```julia
||(condición1, condición2, condición3)
|(condición1, condición2, condición3)
```

En Julia, el operador `||` es una versión cortocircuito del operador `|`.

Ejemplo:

Pregunta si 40 o 17 o 23 están en el arreglo `C` con `|`


```julia
C = rand(0:50,5,5)
```


```julia
( 40 ∈ C ) | ( 17 ∈ C ) | ( 23 ∈ C ) 
```


```julia
|( 40 ∈ C, 17 ∈ C, 23 ∈ C )
```

### [IF, ELSE, ELSEIF](#contenidos) <a name="U3S1S4"></a>

#### Condicional `if`
El condicional `if` se usa para ejecutar un bloque de código solo si una expresión es verdadera. 

Síntaxis 

En una línea

```julia
if condición instrucciones; end
```

En varias líneas

```julia
if condición
    instrucciones
end
```

Como operador ternario

```julia 
(condición) && (instrucción)
```

Donde `condición` es una expresión que puede evaluar a true o false. Si condicion es verdadera, se ejecuta el código dentro del bloque `if`.

Por ejemplo:


```julia
r = rand(["J","U","L","I","A"])
```


```julia
if r == "L" println("$r"); end
```


```julia
if r == "L" 
    println("$r")
end
```


```julia
(r == "L") && (println("$r"));
```

También se puede utilizar la cláusula `else` para ejecutar un bloque de código alternativo si la condición es falsa. La sintaxis es la siguiente:

Síntaxis


```julia
if condición
    instrucciones 1
else
    instrucciones 2
end
```

Síntaxis como operador ternario

```julia 
condición ? instrucción 1 : instrucción 2
```

Por ejemplo:


```julia
if |(r == "L", r == "A")  
    println("acertaste\nvalor de variable = $r") 
else 
    println("fallaste")
end
```


```julia
 |(r == "L",r == "A")  ?  println("acertaste\nvalor de variable = $r") : println("fallaste")
```

Por ejemplo:

`Sys.total_memory()` es una función en Julia que devuelve la cantidad total de memoria disponible en el sistema. 

El valor devuelto está en bytes: 


```julia
ram = Sys.total_memory()
ram = ram*1.0
```

* Si $\quad 2GB < \text{ram} \leq 4GB, \quad$  imprime mi RAM es de 4 GB; 

  en otro caso la muestra el valor de ram en GB con `@sprintf` usando `%1.0f` y `println` 
  


```julia
using Printf
```


```julia
ram = ram/2^30
```


```julia
if (2 < ram) && (ram <= 4)
    s = @sprintf "Mi RAM es de 4GB"
else
    s = @sprintf "Mi RAM es de %1.0f GB" ram
end
println(s)
```

En Julia `elseif` es una sintaxis que permite agregar más de una condición a una estructura condicional `if-else`.

Sintaxis

```julia
if *condiciones 1*
    *instrucciones 1*
elseif *condiciones 2*
    *instrucciones 2*
else
    *instrucciones 3*
end
```
Por ejemplo:


```julia
num_x = 5

if num_x < 0
    println("num_x es negativo")
elseif num_x == 0
    println("num_x es igual a cero")
else
    println("num_x es positivo")
end
```

En este ejemplo, si `num_x` es menor que cero se imprime `"num_x es negativo"`. Si no lo es, se evalúa la siguiente condición en la cláusula `elseif`, que es si `num_x` es igual a cero. Si `num_x` no es menor que cero ni igual a cero, se ejecuta la cláusula `else`.

## [CICLOS](#contenidos) <a name="U3S2"></a>

### [WHILE](#contenidos) <a name="U3S2S1"></a>

El ciclo `while` se utiliza para repetir un bloque de código mientras una condición sea verdadera. La sintaxis es la siguiente:


```julia
while condición
      instrucciones
end
```
Donde `condicion` es una expresión que se evalúa en cada iteración del ciclo. Si condicion es verdadera, se ejecuta el código dentro del bloque `while`. El ciclo se repite hasta que `condicion` sea falsa.

Por ejemplo:
- inicializa variable y contador


```julia
x = 1.0; contador = 0; tmp = 0.0;
```

* crea bucle para aumentar el valor de `x` por su doble

    1. actualiza variable `tmp` para guardar el valor anterior de `x`

    2. actualiza `x`
    
    3. aumenta `contador` en 1 por cada paso

    4. en cada paso muestra el valor de `x` y de `contador`

*  deten el bucle cuando ya NO se cumpla `x` > `tmp`


```julia
while x > tmp
    println("$contador  $x")
    tmp = copy(x)
    x = 2.0*x
    contador += 1
end  
```

¿Sabes por qué se detiene este ciclo?

> El ciclo se detiene porque en algún punto el valor de `x` se vuelve infinito al ser demasiado grande para ser representado por un número de punto flotante. En Julia, el valor de `Inf` se usa para representar el infinito positivo.

### [FOR](#contenidos) <a name="U3S2S2"></a>

El ciclo `for` se utiliza para iterar sobre una colección de elementos. 

La sintaxis es la siguiente:
```julia
for variable in iterable
    instrucciones
end
```
- Puedes cambiar `in` por `∈`
- El iterable toma el valor de cada elemento de colección en cada iteración. La colección puede ser un rango, un arreglo, un conjunto, un diccionario, entre otros.

Por ejemplo:

- El comando  `Pkg.installed()` regresa un diccionario con la lista de paquetes instalados y su correspondiente versión.
- Use ciclo **for** para mostrar la lista completa de paquetes instalados sin las versiones


```julia
using Pkg
```


```julia
Lista = Pkg.installed()
```


```julia
for paquetes ∈ Lista
    println(paquetes[1])
end
```

Podemos usar ciclo **for** para generar algunas matrices

Por ejemplo:

Crea la matriz  $$t_{i,j} \ = \ j-i, \quad i,j=1,\dots,5$$


```julia
T = [ j-i for i in 1:5, j in 1:5 ]
```

¿qué pasa si cambia el orden de los índices?


```julia
T = [ i-j for i in 1:5, j in 1:5 ]
```

#### @elapsed

* El macro @elapsed se utiliza para medir el tiempo que tarda una instrucción en ejecutarse. La sintaxis básica es `@elapsed expr`, donde `expr` es la expresión o instrucción a medir.

Por ejemplo:

- Crea un vector `r` de `n = 10000` elementos aleatorios.
- Llena una matriz de `n×n` de modo que cada renglón o columna sea el mismo vector aleatorio `r`.

Creamos el vector `r`:


```julia
n = 10000; r = rand(n);
```

Hacemos una pre alocación de memoria para un arreglo de `n×n` sin inicialización


```julia
A₁ = Array{Float64, 2}(undef, n, n); 
```

Llena una matriz de modo que cada **renglón** es el mismo vector aleatorio **r**


```julia
@elapsed for i ∈ 1:n A₁[i, :] = r; end
```

Ahora, llena una matriz de modo que cada **columna** sea **r**


```julia
A₂ = Array{Float64, 2}(undef, n, n);
@elapsed for j ∈ 1:n A₂[:,j] = r; end
```

Podemos hacerlo usando el comando `repeat` para llenar una matriz de modo que cada columna sea **r**


```julia
A₃ = Array{Float64, 2}(undef, n, n); 
@elapsed A₃ = repeat(r, 1, n)
```

> MUY IMPORTANTE: En Julia, es más rápido acceder al segundo índice de un arreglo 2D en lugar del primero. Esto se debe a que Julia almacena los arreglos en columnas, lo que significa que la memoria se organiza en columnas. Por lo tanto, acceder a la columna completa es más eficiente que acceder a la fila completa, ya que esto requiere menos operaciones de memoria y puede aprovechar la caché de memoria de manera más efectiva.
