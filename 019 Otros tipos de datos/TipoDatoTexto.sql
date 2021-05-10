
if object_id('visitantes') is not null
  drop table visitantes;

/* Un comercio que tiene un stand en una feria registra en una tabla llamada "visitantes" 
   algunos datos de las personas que visitan o compran en su stand para luego enviarle 
   publicidad de sus productos. */
   
   
create table visitantes(
  nombre varchar(30),
  edad integer,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11)
);

-- Intentamos ingresar una cadena de mayor longitud que la definida 
-- en el campo sexo (se genera un error):
insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');

-- Ingresamos un número telefónico olvidando las comillas, es decir, 
-- como un valor numérico (lo transforma a cadena):
insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

select * from visitantes;