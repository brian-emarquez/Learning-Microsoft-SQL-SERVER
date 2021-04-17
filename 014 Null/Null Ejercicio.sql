/* Null Ejerccios */

  if object_id('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

exec sp_columns medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(3,'Buscapina','Roche',null,200);

select * from medicamentos;


--Ingrese un registro con valor "0" para el precio y cadena vacía para el laboratorio:
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Bayaspirina','',0,150);
select * from medicamentos;

--Ingrese un registro con valor "0" para el código y cantidad y cadena vacía para el nombre:
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);
  select * from medicamentos;

select * from medicamentos
where laboratorio is null;

select * from medicamentos
where laboratorio='';

select * from medicamentos
where precio is not null;