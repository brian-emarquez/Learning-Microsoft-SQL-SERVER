### Valores por defecto (default)

Hemos visto que si al insertar registros no se especifica un valor para un campo que admite valores nulos, se ingresa automaticamente "null" y si el campo está declarado "identity", se inserta el siguiente de la secuencia. A estos valores se les denomina valores por defecto o predeterminados.

Un valor por defecto se inserta cuando no está presente al ingresar un registro y en algunos casos en que el dato ingresado es inválido.

Para campos de cualquier tipo no declarados "not null", es decir, que admiten valores nulos, el valor por defecto es "null". Para campos declarados "not null", no existe valor por defecto, a menos que se declare explícitamente con la cláusula "default".

Para todos los tipos, excepto los declarados "identity", se pueden explicitar valores por defecto con la cláusula "default".

Podemos establecer valores por defecto para los campos cuando creamos la tabla. Para ello utilizamos "default" al definir el campo. Por ejemplo, queremos que el valor por defecto del campo "autor" de la tabla "libros" sea "Desconocido" y el valor por defecto del campo "cantidad" sea "0":

```sql
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) not null default 'Desconocido', 
  editorial varchar(20),
  precio decimal(5,2),
  cantidad tinyint default 0
 );
```