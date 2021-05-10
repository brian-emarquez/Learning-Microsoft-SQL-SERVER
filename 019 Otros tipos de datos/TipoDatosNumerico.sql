if object_id('libros') is not null
  drop table libros;

create table libros(
  codigo smallint identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio smallmoney,
  cantidad tinyint
);

go

-- Intentemos ingresar un valor fuera del rango definido, una cantidad 
-- que supera el rango del tipo "tinyint", el valor 260 (genera error):
insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',25.60,260);

-- Intentamos ingresar un precio que supera el rango del tipo "smallmoney",
-- el valor 250000 (genera error):
insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',250000,100);

-- Intentamos ingresar una cadena que SQL Server no pueda convertir a valor 
-- numérico en el campo "precio" (genera error):
insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Uno','Richard Bach','Planeta','a50.30',100);

-- Ingresamos una cadena en el campo "cantidad" (lo convierte a valor numérico):
insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Uno','Richard Bach','Planeta',50.30,'100');

select * from libros;