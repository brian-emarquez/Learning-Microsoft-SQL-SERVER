### Funciones Matemacas

-`abs(x)`: retorna el valor absoluto del argumento "x". Ejemplo:

 select abs(-20);
retorna 20.

-`ceiling(x)`: redondea hacia arriba el argumento "x". Ejemplo:

 select ceiling(12.34);
retorna 13.

-`floor(x)`: redondea hacia abajo el argumento "x". Ejemplo:

 select floor(12.34);
retorna 12.

- %: %: devuelve el resto de una división. Ejemplos:

 select 10%3;
retorna 1.

 select 10%2;
retorna 0.

-`power(x,y)`: retorna el valor de "x" elevado a la "y" potencia. Ejemplo:

 select power(2,3);
retorna 8.

-`round`(numero,longitud): retorna un número redondeado a la longitud especificada. "longitud" debe ser tinyint, smallint o int. Si "longitud" es positivo, el número de decimales es redondeado según "longitud"; si es negativo, el número es redondeado desde la parte entera según el valor de "longitud". Ejemplos:

 select round(123.456,1);
retorna "123.400", es decir, redondea desde el primer decimal.

 select round(123.456,2);
retorna "123.460", es decir, redondea desde el segundo decimal.

 select round(123.456,-1);
retorna "120.000", es decir, redondea desde el primer valor entero (hacia la izquierda).

 select round(123.456,-2);
retorna "100.000", es decir, redondea desde el segundo valor entero (hacia la izquierda).

-`sign(x)`: si el argumento es un valor positivo devuelve 1;-1 si es negativo y si es 0, 0.

-`square(x)`: retorna el cuadrado del argumento. Ejemplo:

 select square(3); retorna 9.
-`srqt(x)`: devuelve la raiz cuadrada del valor enviado como argumento.

SQL Server dispone de funciones trigonométricas que retornan radianes.

