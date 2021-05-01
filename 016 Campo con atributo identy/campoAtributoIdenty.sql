if object_id('libros') is not null
  drop table libros;

  create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio float
);

go

insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',23);

SELECT * FROM libros

insert into libros (titulo,autor,editorial,precio)
  values('Uno','Richard Bach','Planeta',18);
insert into libros (titulo,autor,editorial,precio)
  values('Aprenda PHP','Mario Molina','Siglo XXI',45.60);
insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de maravillas','Lewis Carroll','Paidos',15.50);

SELECT * FROM libros

-- Intentemos ingresar un valor para el campo "codigo" (genera error):
insert into libros (codigo,titulo,autor,editorial,precio)
  values(5,'Martin Fierro','Jose Hernandez','Paidos',25);

  -- Intentemos cambiar el valor de código de un registro (genera error):
update libros set codigo=9
  where titulo='Uno';

exec sp_columns libros;

-- Eliminemos el último registro:
delete from libros
  where autor='Lewis Carroll';

-- Ingresamos un quinto registro
insert into libros (titulo, autor, editorial, precio)
  values('Martin Fierro','Jose Hernandez','Paidos',25); 

--  El campo código se guardó el valor secuencial sin considerar que el valor "4" ya no existe:
select * from libros;