### Campo con atributo identy

Un campo numérico puede tener un atributo extra "identity". Los valores de un campo con este atributo genera valores secuenciales que se inician en 1 y se incrementan en 1 automáticamente.

Se utiliza generalmente en campos correspondientes a códigos de identificación para generar valores únicos para cada nuevo registro que se inserta.

Sólo puede haber un campo "identity" por tabla.

Para que un campo pueda establecerse como "identity", éste debe ser entero (también puede ser de un subtipo de entero o decimal con escala 0, tipos que estudiaremos posteriormente).

Para que un campo genere sus valores automáticamente, debemos agregar el atributo "identity" luego de sudefinición al crear la tabla:

```sql
 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio float
 );
```

Cuando un campo tiene el atributo "identity" no se puede ingresar valor para él, porque se inserta automáticamente tomando el último valor como referencia, o 1 si es el primero.

Para ingresar registros omitimos el campo definido como "identity", por ejemplo:

```sql
 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',23);
```

Este primer registro ingresado guardará el valor 1 en el campo correspondiente al código.

Si continuamos ingresando registros, el código (dato que no ingresamos) se cargará automáticamente siguiendo la secuencia de autoincremento.

No está permitido ingresar el valor correspondiente al campo "identity", por ejemplo:

```sql
 insert into libros (codigo,titulo,autor,editorial,precio)
  values(5,'Martin Fierro','Jose Hernandez','Paidos',25);
```

generará un mensaje de error.
"identity" permite indicar el valor de inicio de la secuencia y el incremento, pero lo veremos posteriormente.

Un campo definido como "identity" generalmente se establece como clave primaria.

Un campo "identity" no es editable, es decir, no se puede ingresar un valor ni actualizarlo.

Un campo de identidad no permite valores nulos, aunque no se indique especificamente. Si ejecutamos el procedimiento "sp_columns()" veremos que en el campo "codigo" en la columna "TYPE_NAME" aparece "int identity" y en la columna "IS_NULLABLE" aparece "NO".