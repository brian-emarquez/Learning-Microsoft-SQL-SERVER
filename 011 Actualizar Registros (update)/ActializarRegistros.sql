
if object_id('agenda') is not null
 drop table agenda;

 create table agenda(
	 apellido varchar(30),
	 nombre varchar(20),
	 domicilio varchar(30),
	 telefono varchar(11)
 );

  insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

-- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" (1 registro afectado)

update agenda set nombre = 'juan jose' where nombre = 'juan' 
select * from agenda

-- Actualice los registros cuyo número telefónico sea igual a "4545454" por "4445566" 
--(2 registros afectados)

update agenda set telefono = 4445566 where telefono = 4545454
select * from agenda


-- Luego de cada actualización ejecute un select que muestre todos los registros de la tabla.
 select * from agenda;