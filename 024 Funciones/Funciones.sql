select substring('Buenas tardes',7,10);

-- str
select str(123.456,7,3);
select str(-123.456,7,3);

-- stuff
select stuff('abcde',3,2,'opqrs');

 -- char
select char(65);

-- left
select left('buenos dias',8);

-- right
select right('buenos dias',8);

 --lower
select lower('HOLA ESTUDIAnte');

 --upper
select upper('HOLA ESTUDIAnte');

--ltrim
select rtrim('   Hola   ');

-- replace
select replace('xxx.sqlserver','x','w');

-- reverse
select reverse('Hola');

--patindex: posicion
select patindex('%Luis%', 'Jorge Luis Borges');

--charindex
 select charindex('or','Jorge Luis Borges'); 

--replicate
select replicate ('Hola',3);

--space
 select 'Hola'+space(1)+'que tal';


