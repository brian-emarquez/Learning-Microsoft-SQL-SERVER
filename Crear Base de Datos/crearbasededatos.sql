create table usuario(
	usuarios varchar(30),
	clave varchar(10)
);

/*para ver le aesctrucutura de la tabla mediante procedimiento almacenados*/
exec sp_columns usuario;

/* como borra un tabla*/

drop table usuario; 

