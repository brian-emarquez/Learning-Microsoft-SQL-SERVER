
--1- Elimine la tabla si existe:
 if object_id('libros') is not null
  drop table libros;

--2- Créela con los siguientes campos, estableciendo como clave primaria el campo "codigo":
 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );

--3- Ingrese los siguientes registros:
 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

select * from libros

--4- Ingrese un registro con código repetido (aparece un mensaje de error)
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

--5- Intente ingresar el valor "null" en el campo "codigo"
 insert into libros (codigo,titulo,autor,editorial)
  values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

--6- Intente actualizar el código del libro "Martin Fierro" a "1" (mensaje de error)
 update libros set codigo=1
  where titulo='Martin Fierro';