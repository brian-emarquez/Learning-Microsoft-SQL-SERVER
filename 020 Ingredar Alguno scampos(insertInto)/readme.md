### Ingresar algunos campos (insert into)

Si ingresamos valores para todos los campos, podemos omitir la lista de nombres de los campos.
Por ejemplo, si tenemos creada la tabla "libros" con los campos "titulo", "autor" y "editorial", podemos ingresar un registro de la siguiente manera:

```sql
 insert into libros
  values ('Uno','Richard Bach','Planeta');

  insert into libros (titulo, autor)
  values ('El aleph','Borges');
``` 

SQL Server almacenará el valor "null" en el campo "editorial", para el cual no hemos explicitado un valor.

Al ingresar registros debemos tener en cuenta:

- la lista de campos debe coincidir en cantidad y tipo de valores con la lista de valores luego de "values". Si se listan más (o menos) campos que los valores ingresados, aparece un mensaje de error y la sentencia no se ejecuta.

- si ingresamos valores para todos los campos podemos obviar la lista de campos.

- podemos omitir valores para los campos que NO hayan sido declarados "not null", es decir, que permitan valores nulos (se guardará "null"); si omitimos el valor para un campo "not null", la sentencia no se ejecuta.

- se DEBE omitir el valor para el campo"identity". Salvo que identity_insert este en on.

- se pueden omitir valores para campos declarados "not null" siempre que tengan definido un valor por defecto con la cláusula "default" (tema que veremos a continuación).