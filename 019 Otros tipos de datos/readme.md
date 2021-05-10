### Otros tipos de datos en SQL SERVER

<p>Ya explicamos que al crear una tabla debemos elegir la estructura adecuada, esto es, definir los campos y sus tipos más precisos, según el caso.

El tipo de dato especificado en la definición de cada campo indica los valores permitidos para cada uno de ellos.

Hasta ahora hemos visto 3 tipos de datos: varchar, integer y float. Hay más tipos, incluso, subtipos.
</p>

<p>
- `TEXTO`: Para almacenar texto usamos cadenas de caracteres.
Las cadenas se colocan entre comillas simples. Podemos almacenar letras, símbolos y dígitos con los que no se realizan operaciones matemáticas, por ejemplo, códigos de identificación, números de documentos, números telefónicos.
SQL Server ofrece los siguientes tipos: `char`, `nchar`, `varchar`, `nvarchar`, `text` y `ntext`.

- `NUMEROS`: Existe variedad de tipos numéricos para representar enteros, decimales, monedas.
Para almacenar valores enteros, por ejemplo, en campos que hacen referencia a cantidades, precios, etc., usamos el tipo integer (y sus subtipos: tinyint, smallint y bigint).
Para almacenar valores con decimales exactos, utilizamos: numeric o decimal (son equivalentes).
Para guardar valores decimales aproximados: float y real. Para almacenar valores monetarios: money y smallmoney.

- `FECHAS y HORAS`: para guardar fechas y horas SQL Server dispone de 2 tipos: datetime y smalldatetime
</p>


### Tipo de dato (numérico)

Para almacenar valores NUMERICOS SQL Server dispone de varios tipos.

Para almacenar valores ENTEROS, por ejemplo, en campos que hacen referencia a cantidades, usamos:

1) integer o int: su rango es de -2000000000 a 2000000000 aprox. El tipo "integer" tiene subtipos:
- smallint: Puede contener hasta 5 digitos. Su rango va desde –32000 hasta 32000 aprox.
- tinyint: Puede almacenar valores entre 0 y 255.
- bigint: De –9000000000000000000 hasta 9000000000000000000 aprox.

_Para almacenar valores numéricos EXACTOS con decimales, especificando la cantidad de cifras a la izquierda y derecha del separador decimal, utilizamos:_

2) decimal o numeric (t,d): Pueden tener hasta 38 digitos, guarda un valor exacto. El primer argumento indica el total de dígitos y el segundo, la cantidad de decimales.
Por ejemplo, si queremos almacenar valores entre -99.99 y 99.99 debemos definir el campo como tipo "decimal(4,2)". Si no se indica el valor del segundo argumento, por defecto es "0". Por ejemplo, si definimos "decimal(4)" se pueden guardar valores entre -9999 y 9999

El rango depende de los argumentos, también los bytes que ocupa.
Se utiliza el punto como separador de decimales.

Si ingresamos un valor con más decimales que los permitidos, redondea al más cercano; por ejemplo, si definimos "decimal(4,2)" e ingresamos el valor "12.686", guardará "12.69", redondeando hacia arriba; si ingresamos el valor "12.682", guardará "12.67", redondeando hacia abajo.


_Para almacenar valores numéricos APROXIMADOS con decimales utilizamos:_

3) float y real: De 1.79E+308 hasta 1.79E+38. Guarda valores aproximados.
4) real: Desde 3.40E+308 hasta 3.40E+38. Guarda valores aproximados.

Para almacenar valores MONETARIOS empleamos:

5) money: Puede tener hasta 19 digitos y sólo 4 de ellos puede ir luego del separador decimal; entre –900000000000000.5808 aprox y 900000000000000.5807.

6) smallmoney: Entre –200000.3648 y 200000.3647 aprox.




Tipo		Bytes de almacenamiento
_______________________________________
int		4
smallint	2
tinyint		1
bigint		8

decimal		2 a 17

float		4 u 8
real		4 u 8

money		8
smallmoney	4