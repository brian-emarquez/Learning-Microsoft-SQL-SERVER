### Recuperar algunos registros (where)

Hemos aprendido a seleccionar algunos campos de una tabla.
También es posible recuperar algunos registros.

Existe una cláusula, "where" con la cual podemos especificar condiciones para una consulta "select". Es decir, podemos recuperar algunos registros, sólo los que cumplan con ciertas condiciones indicadas con la cláusula "where". Por ejemplo, queremos ver el usuario cuyo nombre es "Marcelo", para ello utilizamos "where" y luego de ella, la condición:

```sql
 select nombre, clave
  from usuarios
  where nombre='Marcelo';
```
La sintaxis básica y general es la siguiente:


```sql
 select NOMBRECAMPO1, ..., NOMBRECAMPOn
  from NOMBRETABLA
  where CONDICION;

```
Para las condiciones se utilizan operadores relacionales (tema que trataremos más adelante en detalle). El signo igual(=) es un operador relacional.
Para la siguiente selección de registros especificamos una condición que solicita los usuarios cuya clave es igual a "River":


```sql 
 select nombre,clave
  from usuarios
  where clave='River';
```
Si ningún registro cumple la condición establecida con el "where", no aparecerá ningún registro.

Entonces, con "where" establecemos condiciones para recuperar algunos registros.

Para recuperar algunos campos de algunos registros combinamos en la consulta la lista de campos y la cláusula "where":

```sql
 select nombre
  from usuarios
  where clave='River';

```
En la consulta anterior solicitamos el nombre de todos los usuarios cuya clave sea igual a "River".