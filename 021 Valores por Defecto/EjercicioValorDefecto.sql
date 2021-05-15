/* Valores por fecto ejecicio */

/*Un comercio que tiene un stand en una feria registra en una tabla llamada 
"visitantes" algunos datos de las personas que visitan o compran en su 
stand para luego enviarle publicidad de sus productos.*/

--1- Elimine la tabla "visitantes", si existe:
if object_id('visitantes') is not null
	drop table visitantes;

-- 2- Cree la tabla con la siguiente estructura:
create table visitantes(
	nombre varchar(30),
	edad int,
	sexo char(1) default 'm',
	domiciolio varchar(30),
	ciudad varchar(20) default 'Arequipa',
	telefono varchar(20),
	mail varchar(20) default 'No tiene',
	montoCompra decimal (6,2)
);

-- 3- Vea la información de las columnas "COLUMN_DEF" y "IS_NULLABLE":
exec sp_columns visitantes;

--5- Ingrese algunos registros sin especificar valores para algunos campos para ver cómo opera la cláusula "default"

insert into visitantes(nombre, domiciolio, montoCompra)
values('brian', 'los angeles 10', 500.00);
select * from visitantes;

insert into visitantes default values;
select * from visitantes;