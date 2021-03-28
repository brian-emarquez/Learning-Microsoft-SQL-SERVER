if object_id('libros') is not null
  drop table libros;

 create table libros(
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',24.50);
 insert into libros (titulo,autor,editorial,precio)
  values ('Martin Fierro','Jose Hernandez','Emece',16.00);
 insert into libros (titulo,autor,editorial,precio)
  values ('Aprenda PHP','Mario Molina','Emece',35.40);
 insert into libros (titulo,autor,editorial,precio)
  values ('Cervantes y el quijote','Borges','Paidos',50.90);

 select * from libros
  where autor<>'Borges';

 select titulo,precio
  from libros
  where precio>20;

 select * from libros
  where precio<=30;
