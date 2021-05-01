### Otras características del atributo Identity

El atributo "identity" permite indicar el valor de inicio de la secuencia y el incremento, para ello usamos la siguiente sintaxis:

```sql
 create table libros(
  codigo int identity(100,2),
  titulo varchar(20),
  autor varchar(30),
  precio float
 );
 ```

Los valores comenzarán en "100" y se incrementarán de 2 en 2; es decir, el primer registro ingresado tendrá el valor "100", los siguientes "102", "104", "106", etc.

La función "ident_seed()" retorna el valor de inicio del campo "identity" de la tabla que nombramos:

```sql
 select ident_seed('libros');
```

La función "ident_incr()" retorna el valor de incremento del campo "identity" de la tabla nombrada:
```sql
 select ident_incr('libros');
 ```

Hemos visto que en un campo declarado "identity" no puede ingresarse explícitamente un valor.
Para permitir ingresar un valor en un campo de identidad se debe activar la opción "identity_insert":

```sql
 set identity_insert libros on;
```
Es decir, podemos ingresar valor en un campo "identity" seteando la opción "identity_insert" en "on".

Cuando "identity_insert" está en ON, las instrucciones "insert" deben explicitar un valor:

```sql
 insert into libros (codigo,titulo)
 values (5,'Alicia en el pais de las maravillas');
```
Si no se coloca un valor para el campo de identidad, la sentencia no se ejecuta y aparece un mensaje de error:

 insert into libros (titulo,autor, editorial)
 values ('Matematica estas ahi','Paenza','Paidos');
El atributo "identity" no implica unicidad, es decir, permite repetición de valores; por ello hay que tener cuidado al explicitar un valor porque se puede ingresar un valor repetido.

Para desactivar la opción "identity_insert" tipeamos:

```sql
 set identity_insert libros off;
Servidor de SQL Server instalad
```