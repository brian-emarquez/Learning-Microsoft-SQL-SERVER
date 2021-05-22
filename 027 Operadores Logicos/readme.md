### Operadores Logicos

```sql
- and, significa "y",
- or, significa "y/o",
- not, significa "no", invierte el resultado
- (), paréntesis
```

Los operadores lógicos se usan para combinar condiciones.

Si queremos recuperar todos los libros cuyo autor sea igual a "Borges" y cuyo precio no supere los 20 pesos, necesitamos 2 condiciones:

```sql
 select * from libros
  where (autor='Borges') and
  (precio<=20);
```

Los registros recuperados en una sentencia que une 2 condiciones con el operador "and", cumplen con las 2 condiciones.

Queremos ver los libros cuyo autor sea "Borges" y/o cuya editorial sea "Planeta":

```sql
 select * from libros
  where autor='Borges' or
  editorial='Planeta';
```