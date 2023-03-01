# [<font color=blue>Condicionales y Ciclos</font>](#contenidos) <a name="U3"></a>

## [Condicionales](#contenidos) <a name="U3S1"></a>

### [¿está o no está?](#contenidos) <a name="U3S1S1"></a>

En Julia `in` se utiliza para verificar si un valor se encuentra en una estructura de datos determinada. Retorna `true` si el valor está presente y `false` si no lo está.

Ejemplo para tuplas


```julia
letra = "α"
abc = ("α", "β", 0, 1)

letra in abc
```

Ejemplo para arreglos

Creamos una variable `a` de tipo entero y una matriz aleatoria `C` de enteros entre 0 y 50

Verificar si el valor de la variable `a` está en el arreglo `C`.


```julia
a = 21
C = rand(0:50, 5, 5)
```


```julia
a in C
```

### [Comparaciones](#contenidos) <a name="U3S1S2"></a>

En Julia, `==` es un operador de comparación que se utiliza para verificar si dos objetos tienen el mismo valor. A diferencia del operador `=` que se utiliza para asignar valores a una variable, `==` se utiliza para comparar los valores de dos objetos.

La función `==` devuelve `true` si los objetos son iguales y `false` en caso contrario. Los tipos de los objetos que se comparan no necesitan ser los mismos, pero deben ser comparables entre sí.

Ejemplo:

Sea $R$ matriz aleatoria $3\times 3$ con elementos $1,10,100,1000$

Verificar si $R_{3,3}=1000$  usando `==`


```julia
R = rand([1,10,100,1000],3,3)
```


```julia
R[3,3] == 1000
```

Podemos acceder a bloques de matrices, por ejemplo el bloque $\begin{pmatrix}r_{1,1} & r_{1,2} \\ r_{2,1} & r_{2,2}\end{pmatrix}$ de la matriz $R$:


```julia
R[1:2,1:2]
```

Pregunta si la matriz
$A= \begin{pmatrix}1 & 10 \\ 100 & 1000\end{pmatrix}$
es $\begin{pmatrix}r_{1,1} & r_{1,2} \\ r_{2,1} & r_{2,2}\end{pmatrix}$


```julia
A = [1 10
     100 1000]
A == R[1:2,1:2]
```

La comparación elemento a elemento entre dos matrices se realiza con el operador `.` seguido de la comparación deseada. Por ejemplo, para verificar si dos matrices `A` y `B` son iguales en cada elemento, se puede utilizar la expresión `A .== B`. Esta expresión devolverá una matriz de valores booleanos, donde cada elemento será true si el elemento correspondiente de `A` es igual al elemento correspondiente de `B`, y false en caso contrario.


```julia
A .== R[1:2,1:2]
```

Reemplaza las componentes de $R$ iguales a 1000 por cero usando `.==`


```julia
R
```


```julia
R[ R .== 1000] .= 0
R
```

En Julia, el operador para representar la desigualdad es `≠`
- Usa la combinación `\ne` + `TAB` para obtener `≠`

Por ejemplo, si queremos verificar si `a` es diferente de `b`, podemos escribir:
```Julia
a ≠ b
```
Devuele `true` si `a` y `b` son diferentes, y `false` en caso contrario.


Verificar si $R_{2,2}\neq 100$ usando `≠`:


```julia
R[2,2] ≠ 1000
```

También podemos usar `!=` 


```julia
R[2,2] != 1000
```

Las comparaciones `>=` y `<=` se utilizan en Julia para verificar si un valor es mayor o igual que otro valor y si un valor es menor o igual que otro valor, respectivamente.
- Usa la combinación `\le` + `TAB` para obtener `≤`
- Usa la combinación `\ge` + `TAB`  para obtener `≥`

Sea **r** número entero aleatorio entre 0 y 10.  Pregunta si $r\leq 5$.



```julia
r = rand(0:10)
```


```julia
r ≤ 5
```
