
use bd1

if object_id('usuarios') is not null
  drop table usuarios;

create table usuarios(
  nombre varchar(20),
  clave varchar(10),
  primary key(nombre)
);

go

exec sp_columns usuarios;
select * from usuarios

insert into usuarios (nombre, clave)
  values ('juanperez','Boca');
insert into usuarios (nombre, clave)
  values ('raulgarcia','River');

--  Intentamos ingresar un valor de clave primaria existente (genera error):
insert into usuarios (nombre, clave)
  values ('juanperez','payaso');

-- Intentamos ingresar el valor "null" en el campo clave primaria (genera error):
insert into usuarios (nombre, clave)
  values (null,'payaso');

-- Intentemos actualizar el nombre de un usuario colocando un nombre existente (genera error):
update usuarios set nombre='juanperez'
  where nombre='raulgarcia';