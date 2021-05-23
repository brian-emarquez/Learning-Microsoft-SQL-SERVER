### Contar registros (count_big)

Retorna la cantidad de registros. Es similar a la función "count(*)", la diferencia es que "count_big" retorna un valor "bigint" y "count", un "int".

"count_big(*)" cuenta la cantidad de registros de una tabla, incluyendo los valores nulos y duplicados.

"count_big(CAMPO)" retorna la cantidad de registros cuyo valor en el campo especificado entre paréntesis no es nulo.

"count_big(distinct CAMPO)" retorna la cantidad de registros cuyo valor en el campo especificado no es nulo, sin considerar los repetidos.

