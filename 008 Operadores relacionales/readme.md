### Operadores Relacionales

Los operadores son símbolos que permiten realizar operaciones matemáticas, concatenar cadenas, hacer comparaciones.

SQL Server tiene 4 tipos de operadores:

1. relacionales (o de comparación)
2. aritméticos
3. 4. de concatenación
lógicos.
Por ahora veremos solamente los primeros.

Los operadores relacionales (o de comparación) nos permiten comparar dos expresiones, que pueden ser variables, valores de campos, etc.

Hemos aprendido a especificar condiciones de igualdad para seleccionar registros de una tabla; por ejemplo:

```sql
 select * from libros
  where autor='Borges';
```
Utilizamos el operador relacional de igualdad.

Los operadores relacionales vinculan un campo con un valor para que SQL Server compare cada registro (el campo especificado) con el valor dado.

Los operadores relacionales son los siguientes:

=	igual
<>	distinto
>	mayor
<	menor
>=	mayor o igual
<=	menor o igual

Podemos seleccionar los registros cuyo autor sea diferente de "Borges", para ello usamos la condición:

```sql
 select * from libros
  where autor<>'Borges';
```

Podemos comparar valores numéricos. Por ejemplo, queremos mostrar los títulos y precios de los libros cuyo precio sea mayor a 20 pesos:

```sql
 select titulo, precio
  from libros
  where precio>20;
```

Queremos seleccionar los libros cuyo precio sea menor o igual a 30:

```sql
 select *from libros
  where precio<=30;
```
Los operadores relacionales comparan valores del mismo tipo. Se emplean para comprobar si un campo cumple con una condición.

No son los únicos, existen otros que veremos mas adelante.