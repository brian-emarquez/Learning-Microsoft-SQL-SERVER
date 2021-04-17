### Comntarios

Trabajamos con la tabla "libros" que almacena los datos de los libros de una librería.
Eliminamos la tabla, si existe:

```sql
 if object_id('libros') is not null
  drop table libros;
```
Creamos la tabla:

```sql
 create table libros(
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15)
 );
```
Agregamos un registro:
```sql
 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Emece');
```
Mostramos todos los libros y agregamos un comentario de linea:

```sql
 select * from libros --mostramos los registros de libros; 
vamos a mostrar el título y autor de todos los libros y agregamos un bloque de comentarios:

 select titulo, autor 
 /*mostramos títulos y
 nombres de los autores*/
 ```sql