Hemos aprendido que las funciones de agregado permiten realizar varios cálculos operando con conjuntos de registros.

Las funciones de agregado solas producen un valor de resumen para todos los registros de un campo. Podemos generar valores de resumen para un solo campo, combinando las funciones de agregado con la cláusula "group by", que agrupa registros para consultas detalladas.

Queremos saber la cantidad de libros de cada editorial, podemos tipear la siguiente sentencia:

 select count(*) from libros
  where editorial='Planeta';
y repetirla con cada valor de "editorial":

 select count(*) from libros
  where editorial='Emece';
 select count(*) from libros
  where editorial='Paidos';
 ...