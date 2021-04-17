### Borrar registros

Para eliminar los registros de una tabla usamos el comando "delete":

```sql
 delete from usuarios;
 ```
Muestra un mensaje indicando la cantidad de registros que ha eliminado.

Si no queremos eliminar todos los registros, sino solamente algunos, debemos indicar cuál o cuáles, para ello utilizamos el comando "delete" junto con la clausula "where" con la cual establecemos la condición que deben cumplir los registros a borrar.

Por ejemplo, queremos eliminar aquel registro cuyo nombre de usuario es "Marcelo":

```sql
 delete from usuarios
 where nombre='Marcelo';
 ```
Si solicitamos el borrado de un registro que no existe, es decir, ningún registro cumple con la condición especificada, ningún registro será eliminado.

Tenga en cuenta que si no colocamos una condición, se eliminan todos los registros de la tabla nombrada.