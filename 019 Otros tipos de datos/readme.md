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

