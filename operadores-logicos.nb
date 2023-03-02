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
