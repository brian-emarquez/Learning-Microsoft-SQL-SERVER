if OBJECT_ID('libros') is not null
	drop table libros;

create table libros(
	titulo varchar (80),
	autor varchar(40),
	editorial varchar (30),
	precio float,
	cantidad integer
)

/*exec sp_columns libros;*/

insert into libros(titulo, autor, editorial,precio, cantidad) values ('El Aleph', 'Borges', 'EMC', 25.50, 200);
select * from libros;
insert into libros(titulo, autor, editorial,precio, cantidad) values ('El Aleph1', 'Borges1', 'EMC1', 25.50, 200);
insert into libros(titulo, autor, editorial,precio, cantidad) values ('El Aleph2', 'Borges2', 'EMC2', 25.50, 200);
select * from libros;