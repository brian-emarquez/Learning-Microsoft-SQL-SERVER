### Columnas calculadas (operadores aritméticos y de concatenación)

Los operadores aritméticos permiten realizar cálculos con valores numéricos.
Son: multiplicación (*), división (/) y módulo (%) (el resto de dividir números enteros), suma (+) y resta (-).

Es posible obtener salidas en las cuales una columna sea el resultado de un cálculo y no un campo de una tabla.

Si queremos ver los títulos, precio y cantidad de cada libro escribimos la siguiente sentencia:

```sql
 select titulo,precio,cantidad
  from libros;
```

Si queremos saber el monto total en dinero de un título podemos multiplicar el precio por la cantidad por cada título, pero también podemos hacer que SQL Server realice el cálculo y lo incluya en una columna extra en la salida:

```sql
 select titulo, precio,cantidad,
  precio*cantidad
  from libros;
```

Si queremos saber el precio de cada libro con un 10% de descuento podemos incluir en la sentencia los siguientes cálculos:

```sql
 select titulo,precio,
  precio-(precio*0.1)
  from libros;
```

También podemos actualizar los datos empleando operadores aritméticos:

```sql
 update libros set precio=precio-(precio*0.1);
```