--Trabajamos con la tabla "libros" de una librería.
--Eliminamos la tabla si existe:

 if object_id ('libros') is not null
  drop table libros;
--Creamos la tabla:

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(20),
  precio decimal(6,2),
 );
--Ingresamos algunos registros:

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros (titulo,precio)
  values('Antología poética',32);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);
--Recuperamos los libros cuyo autor es "Paenza" o "Borges":

 select * from libros
  where autor in('Borges','Paenza');
--Recuperamos los libros cuyo autor NO es "Paenza" ni "Borges":

 select * from libros
  where autor not in ('Borges','Paenza');