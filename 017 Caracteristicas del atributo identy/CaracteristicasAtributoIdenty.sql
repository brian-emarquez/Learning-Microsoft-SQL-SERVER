if object_id('libros') is not null
  drop table libros;

create table libros(
  codigo int identity(100,2),
  titulo varchar(20),
  autor varchar(30),
  precio float
);

go

insert into libros (titulo,autor,precio)
  values('El aleph','Borges',23);
insert into libros (titulo,autor,precio)
  values('Uno','Richard Bach',18);
insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',45.60);

select * from libros;

-- Para saber cuál es el valor de inicio del campo "identity" de la tabla "libros":
select ident_seed('libros');

-- Si intentamos ingresar un valor para el campo "codigo" (genera error):
insert into libros (codigo,titulo,autor,precio)
  values(106,'Martin Fierro','Jose Hernandez',25);

-- Para permitir ingresar un valor en un campo de identidad activamos la opción "identity_insert":
set identity_insert libros on;

-- Recordemos que si "identity_insert" está en ON, la instrucción "insert" DEBE explicitar un valor:
insert into libros (codigo,titulo,autor)
 values (100,'Matematica estas ahi','Paenza');

-- Note que ingresamos un valor de código que ya existe; esto está permitido porque
-- el atributo "identity" no implica unicidad.
insert into libros (codigo,titulo,autor)
 values (1,'Ilusiones','Richard Bach');

-- Si no se coloca un valor para el campo de identidad, 
-- la sentencia no se ejecuta y aparece un mensaje de error:
insert into libros (titulo,autor)
 values ('Uno','Richard Bach');

-- Para desactivar la opción "identity_insert" 
set identity_insert libros off;

-- Intentemos ingresar un valor para el campo "codigo" (genera error):
insert into libros (codigo,titulo,autor)
  values (300,'Uno','Richard Bach');