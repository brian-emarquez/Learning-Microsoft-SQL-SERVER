if OBJECT_ID('usuarios') is not null
	drop table usuarios;

create table usuarios(
	nombre varchar (30),
	clave varchar (10)
);
	
insert into usuarios (nombre, clave) values ('brian', '123acd');
select * from usuarios
insert into usuarios (nombre, clave) values ('maria', '124acd');
select * from usuarios