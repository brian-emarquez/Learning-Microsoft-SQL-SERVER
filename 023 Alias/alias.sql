if object_id('agenda') is not null
  drop table agenda;

create table agenda(
  nombre varchar(30),
  domicilio varchar(30),
  telefono varchar(11)
);

go

insert into agenda
  values('Juan Perez','Avellaneda 908','4252525');
insert into agenda
  values('Marta Lopez','Sucre 34','4556688');
insert into agenda
  values('Carlos Garcia','Sarmiento 1258',null);
select * from agenda

select nombre as NombreYApellido,
  domicilio,telefono
  from agenda;

select nombre as 'Nombre y apellido',
  domicilio,telefono
  from agenda;

select nombre 'Nombre y apellido',
  domicilio,telefono
  from agenda;

select nombre 'test nombre'
	 from agenda;