/* Operadores Relacional Ejercicio */

use bd1
 if object_id('articulos') is not null
  drop table articulos;

  create table articulos(
	  codigo integer,
	  nombre varchar(20),
	  descripcion varchar(30),
	  precio float,
	  cantidad integer
 );

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

--Seleccione los datos de las impresoras (2 registros) 
select * from articulos where
	nombre = 'impresora';

--Seleccione los artículos cuyo precio sea mayor o igual a 400 (3 registros)
select * from articulos where precio >= 400

--Seleccione el código y nombre de los artículos cuya cantidad sea menor a 30 (2 registros)
select codigo, nombre from articulos where cantidad < 30

--Selecciones el nombre y descripción de los artículos que NO cuesten $100 (4 registros)

select codigo, descripcion from articulos where cantidad <> 100