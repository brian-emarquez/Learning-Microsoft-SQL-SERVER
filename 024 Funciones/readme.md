### Funciones

Una función es un conjunto de sentencias que operan como una unidad lógica.

Una función tiene un nombre, retorna un parámetro de salida y opcionalmente acepta parámetros de entrada. Las funciones de SQL Server no pueden ser modificadas, las funciones definidas por el usuario si.

1) de agregado: realizan operaciones que combinan varios valores y retornan un único valor. Son "count", "sum", "min" y "max".

2) escalares: toman un solo valor y retornan un único valor. Pueden agruparse de la siguiente manera:

- de configuración: retornan información referida a la configuración.
Ejemplo:

 select @@version;
retorna la fecha, versión y tipo de procesador de SQL Server.

**Funciones para el manejo de cadena** 

- `substring` (cadena,inicio,longitud): devuelve una parte de la cadena especificada como primer argumento, empezando desde la posición especificada por el segundo argumento y de tantos caracteres de longitud como indica el tercer argumento. Ejemplo:

```sql
 select substring('Buenas tardes',8,6);
retorna "tardes".
```

- `str` (numero,longitud,cantidaddecimales): convierte números a caracteres; el primer parámetro indica el valor numérico a convertir, el segundo la longitud del resultado (debe ser mayor o igual a la parte entera del número más el signo si lo tuviese) y el tercero, la cantidad de decimales. El segundo y tercer argumento son opcionales y deben ser positivos. String significa cadena en inglés.

```sql
 select str(123.456,7,3);

 select str(-123.456,7,3);
 ```

 retorna '-123.46';


- `stuff`(cadena1,inicio,cantidad,cadena2): inserta la cadena enviada como cuarto argumento, en la posición indicada en el segundo argumento, reemplazando la cantidad de caracteres indicada por el tercer argumento en la cadena que es primer parámetro. Stuff significa rellenar en inglés. Ejemplo:

 select stuff('abcde',3,2,'opqrs');

 - `len`(cadena): retorna la longitud de la cadena enviada como argumento. "len" viene de length, que significa longitud en inglés. Ejemplo:

 select len('Hola');
devuelve 4.


- `char(x)`: retorna un caracter en código ASCII del entero enviado como argumento. Ejemplo:

 
 select char(65);
retorna "A".


- `right`(cadena,longitud): retorna la cantidad (longitud) de caracteres de la cadena comenzando desde la derecha, último caracter. Ejemplo:

 select right('buenos dias',8);
retorna "nos dias".

-`lower`(cadena): retornan la cadena con todos los caracteres en minúsculas. lower significa reducir en inglés. Ejemplo:

 select lower('HOLA ESTUDIAnte');
retorna "hola estudiante".

-`upper`(cadena): retornan la cadena con todos los caracteres en mayúsculas. Ejemplo:

 select upper('HOLA ESTUDIAnte');

 -`ltrim`(cadena): retorna la cadena con los espacios de la izquierda eliminados. Trim significa recortar. Ejemplo:

 select ltrim('     Hola     ');
retorna "Hola ".

- `replace`(cadena,cadenareemplazo,cadenareemplazar): retorna la cadena con todas las ocurrencias de la subcadena reemplazo por la subcadena a reemplazar. Ejemplo:

 select replace('xxx.sqlserverya.com','x','w');
retorna "www.sqlserverya.com'

- `reverse`(cadena): devuelve la cadena invirtiendo el order de los caracteres. Ejemplo:

 select reverse('Hola');
retorna "aloH".

- `patindex`(patron,cadena): devuelve la posición de comienzo (de la primera ocurrencia) del patrón especificado en la cadena enviada como segundo argumento. Si no la encuentra retorna 0. Ejemplos:

 select patindex('%Luis%', 'Jorge Luis Borges');
retorna 7.

 select patindex('%or%', 'Jorge Luis Borges');
retorna 2.

 select patindex('%ar%', 'Jorge Luis Borges');
retorna 0.

- `charindex`(subcadena,cadena,inicio): devuelve la posición donde comienza la subcadena en la cadena, comenzando la búsqueda desde la posición indicada por "inicio". Si el tercer argumento no se coloca, la búsqueda se inicia desde 0. Si no la encuentra, retorna 0. Ejemplos:

 select charindex('or','Jorge Luis Borges',5); 
retorna 13.

 select charindex('or','Jorge Luis Borges'); 
retorna 2.

 select charindex('or','Jorge Luis Borges',14); 
retorna 0.

 select charindex('or', 'Jorge Luis Borges');
retorna 0.

- `replicate`(cadena,cantidad): repite una cadena la cantidad de veces especificada. Ejemplo:

 select replicate ('Hola',3);
retorna "HolaHolaHola";

- `space`(cantidad): retorna una cadena de espacios de longitud indicada por "cantidad", que debe ser un valor positivo. Ejemplo:

 select 'Hola'+space(1)+'que tal';
retorna "Hola que tal".

Se pueden emplear estas funciones enviando como argumento el nombre de un campo de tipo caracter.