### Recuperar algunos campos (select)

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
