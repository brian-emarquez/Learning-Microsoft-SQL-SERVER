### Null

"null" significa "dato desconocido" o "valor inexistente". No es lo mismo que un valor "0", una cadena vacía o una cadena literal "null".

```sql
 create table libros(
  titulo varchar(30) not null,
  autor varchar(20) not null,
  editorial varchar(15) null,
  precio float 
 );
 ```