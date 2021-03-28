
<h2 align="center">Learning-Micosoft-SQL-SERVER </h2>

<p align="center">
  
   </a>
    <img src="https://img.shields.io/github/languages/top/BrianMarquez3/Learning-Microsoft-SQL-SERVER?color=yellow">
  </a>
  <a href="https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/stargazers">
    <img src="https://img.shields.io/github/stars/BrianMarquez3/Learning-Microsoft-SQL-SERVER.svg?style=flat" alt="Stars">
  </a>
  <a href="https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/network">
    <img src="https://img.shields.io/github/forks/BrianMarquez3/Learning-Microsoft-SQL-SERVER.svg?style=flat" alt="Forks">
  </a>
    <img src="https://img.shields.io/github/v/tag/BrianMarquez3/Learning-Microsoft-SQL-SERVER?color=red&label=Version&logo=aql">
  </a>
  
  </a>
    <img src="https://img.shields.io/github/languages/code-size/BrianMarquez3/Learning-Microsoft-SQL-SERVER">
  </a>
  
  </a>
    <img src="https://img.shields.io/github/downloads/BrianMarquez3/Learning-Microsoft-SQL-SERVER/total?color=green">
  </a>
  
   </a>
   <a href="https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/network">
    <img src="https://img.shields.io/badge/Plataform-Windows-blue">
  </a><br>
 
  <img src="https://img.shields.io/github/last-commit/BrianMarquez3/Learning-Microsoft-SQL-SERVER?color=yellow&style=for-the-badge">
  <img src="https://img.shields.io/github/languages/count/BrianMarquez3/Learning-Microsoft-SQL-SERVER?style=for-the-badge">
  
</p>
  
![python](./images/sql.jpg)


## Tabla de Contenidos

| Numeration   | Check  |Topic          | Quantization     |    Edit Gitpot    |    Downloads    |  link   |
| ------------ |--------|-------------- |----------------- |------------------ |---------------- |-------- |
|  001   |:heavy_check_mark: | [Crear Base de Datos](#Crear-Base-de-Datos)   |   :hourglass:     | - | - | [ ⬅️ Atras](https://github.com/BrianMarquez3) | 
|  002   |:heavy_check_mark: | [Insertar Datos](#Insertar-Datos)  |  :hourglass:     | - | - | [ ⬅️ Atras](https://github.com/BrianMarquez3) | 
|  003  |:heavy_check_mark: | [Tipos Datos Básicos](#Tipos-Datos-Básicos)  |  :hourglass:     | - | - | [ ⬅️ Atras](https://github.com/BrianMarquez3) | 
|  004  |:heavy_check_mark: | [SELECT](#SELECT)  |  :hourglass:     | - | - | [ ⬅️ Atras](https://github.com/BrianMarquez3) |
|  005  |:heavy_check_mark: | [Recuperar Campos select](#Recuperar-Campos-select)  |  :hourglass:     | - | - | [ ⬅️ Atras](https://github.com/BrianMarquez3) |

## Crear Base de Datos

```tsql

if object_id('usuario') is not null
	drop table usuario;

create table usuario(
	usuarios varchar(30),
	clave varchar(10)
);

/*Procediemtnos Almacenados*/

```tsql
exec sp_columns usuario;
exec sp_tables @table_owner='dbo'
```


| Carpeta                    | Link |    Home   |  Code       | Version      | Estado     |
|----------------------------|:-----------:|:-----------:|:-----------:|:-----------:|:-----------:|
| [Crear Base de Datos](https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/blob/main/Crear%20Base%20de%20Datos)          |      ✔️     |  [⬅️Atras](#Tabla-de-contenidos) | yes | yes | ✔️ |



## Insertar Datos


| Carpeta                    | Link |    Home   |  Code       | Version      | Estado     |
|----------------------------|:-----------:|:-----------:|:-----------:|:-----------:|:-----------:|
| [Insertar Datos](https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/tree/main/InsertarDatos)          |      ✔️     |  [⬅️Atras](#Tabla-de-contenidos) | yes | yes | ✔️ |


## Tipos Datos Básicos


| Carpeta                    | Link |    Home   |  Code       | Version      | Estado     |
|----------------------------|:-----------:|:-----------:|:-----------:|:-----------:|:-----------:|
| [Tipos Datos Básicos](https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/tree/main/TiposDatosB%C3%A1sicos)          |      ✔️     |  [⬅️Atras](#Tabla-de-contenidos) | yes | yes | ✔️ |

## SELECT

### La sintaxis básica y general es la siguiente:

```tsql
 select * from NOMBRETABLA;
El asterisco (*) indica que se seleccionan todos los campos de la tabla.
```

Podemos especificar el nombre de los campos que queremos ver separándolos por comas:

```tsql
 select titulo,autor from libros; 
 ```

La lista de campos luego del "select" selecciona los datos correspondientes a los campos nombrados. En el ejemplo anterior seleccionamos los campos "titulo" y "autor" de la tabla "libros", mostrando todos los registros. Los datos aparecen ordenados según la lista de selección, en dicha lista los nombres de los campos se separan con comas.

### Comando "go" del "SQL Server Management Studio"
Cuando tenemos un lote de comandos SQL y necesitamos particionarlo en distintos sublotes debemos utilizar el comando "go", no es un comando SQL sino un comando propio del "SQL Server Management Studio":git 

| Carpeta                    | Link |    Home   |  Code       | Version      | Estado     |
|----------------------------|:-----------:|:-----------:|:-----------:|:-----------:|:-----------:|
| [SELECT](https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/tree/main/recuperarCampos(SELECT))          |      ✔️     |  [⬅️Atras](#Tabla-de-contenidos) | yes | yes | ✔️ |


## Recuperar Campos select

La sintaxis básica y general es la siguiente:

```sql
select * from NOMBRETABLA;
```

El asterisco (*) indica que se seleccionan todos los campos de la tabla.

Podemos especificar el nombre de los campos que queremos ver separándolos por comas:

```sql
 select titulo,autor from libros; 
```

La lista de campos luego del "select" selecciona los datos correspondientes a los campos nombrados. En el ejemplo anterior seleccionamos los campos "titulo" y "autor" de la tabla "libros", mostrando todos los registros. Los datos aparecen ordenados según la lista de selección, en dicha lista los nombres de los campos se separan con comas.

![python](./images/recuperarCAMPOS.png)

| Carpeta                    | Link |    Home   |  Code       | Version      | Estado     |
|----------------------------|:-----------:|:-----------:|:-----------:|:-----------:|:-----------:|
| [Recuperar Campos select](https://github.com/BrianMarquez3/Learning-Microsoft-SQL-SERVER/tree/main/005%20recuperarCampos(SELECT))          |      ✔️     |  [⬅️Atras](#Tabla-de-contenidos) | yes | yes | ✔️ |



---
## Material Creador
[SQL SERVER ya](https://www.tutorialesprogramacionya.com/sqlserverya/)

## Paypal Donation
🩸 Hacer una donación [PAYPAL](https://www.paypal.com/donate?hosted_button_id=98U3T62494H9Y) 🍵

## License 
Todo acerca de la licencia [here](https://github.com/BrianMarquez3/Learning-Java/blob/main/LICENCE)

<div align="center"><img src="./images/circle2.gif"></div>
