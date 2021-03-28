### Crear Base de datos

```sql

if object_id('usuario') is not null
	drop table usuario;

create table usuario(
	usuarios varchar(30),
	clave varchar(10)
);

/*Procediemtnos Almacenados*/

```sql
exec sp_columns usuario;
exec sp_tables @table_owner='dbo'
```

