### Alias

```
Palabra: as
```


```sql
 select nombre as NombreYApellido,
  domicilio,telefono
  from agenda;
```

Para reemplazar el nombre de un campo por otro, se coloca la palabra clave "as" seguido del texto del encabezado.

Si el alias consta de una sola cadena las comillas no son necesarias, pero si contiene más de una palabra, es necesario colocarla entre comillas simples:

```sql
 select nombre as 'Nombre y apellido',
  domicilio,telefono
  from agenda;
```

Un alias puede contener hasta 128 caracteres.
También se puede crear un alias para columnas calculadas.

La palabra clave "as" es opcional en algunos casos, pero es conveniente usarla.

Entonces, un "alias" se usa como nombre de un campo o de una expresión. En estos casos, son opcionales, sirven para hacer más comprensible el resultado; en otros casos, que veremos más adelante, son obligatorios.