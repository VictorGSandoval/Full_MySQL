/* 1.Lista el nombre de todos los productos que hay en la tabla producto. */
SELECT nombre FROM producto; 

/* 2.Lista los nombres y los precios de todos los productos de la tabla producto. */
SELECT nombre,precio FROM producto; 

/* 3.Lista todas las columnas de la tabla producto.*/
SELECT * FROM producto; 

/* 4.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD)..*/
SELECT nombre ,precio ,(ROUND(PRECIO *1.11,2)) FROM PRODUCTO AS P_D ;

/* 5.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.*/
SELECT nombre AS NOMBRE_PRODUCTO,precio AS DOLAR,(ROUND(PRECIO *1.11,2)) AS EURO FROM PRODUCTO AS P_D ;

/* 6.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.*/
SELECT (upper(NOMBRE)) AS NOMBRE,precio FROM producto;

/* 7.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.*/
SELECT (LOWER(NOMBRE)) AS NOMBRE,precio FROM producto;

/* 8.Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante*/
SELECT nombre,(UPPER(LEFT(nombre,2))) AS NOMBRE FROM fabricante;

/* 9.Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.*/
SELECT nombre,(round(precio,1)) AS PRECIO FROM producto;

/* 10.Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.*/
SELECT nombre,(round(precio,0)) AS PRECIO FROM producto;

/* 11.Lista el código de los fabricantes que tienen productos en la tabla producto.*/
SELECT codigo_fabricante FROM PRODUCTO;

/* 12.Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.*/
select codigo_fabricante FROM PRODUCTO GROUP BY codigo_fabricante
HAVING COUNT(*) > 1;

/* 13.Lista los nombres de los fabricantes ordenados de forma ascendente.*/
SELECT NOMBRE FROM FABRICANTE ORDER BY NOMBRE;

/* 14.Lista los nombres de los fabricantes ordenados de forma descendente*/
SELECT NOMBRE FROM FABRICANTE ORDER BY NOMBRE desc;

/* 15.Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.*/
select nombre,PRECIO FROM PRODUCTO order by NOMBRE;
select nombre,PRECIO FROM PRODUCTO order by PRECIO DESC;

/* 16.Devuelve una lista con las 5 primeras filas de la tabla fabricante.*/
select  nombre FROM FABRICANTE order by NOMBRE LIMIT 5; 

/* 17.Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.*/
SELECT * FROM fabricante
LIMIT 3,2;

/*18 Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas 
ORDER BY y LIMIT*/

select nombre, precio from producto order by precio limit 100;

/*19 Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas
ORDER BY y LIMIT)*/
select nombre, precio from producto order by precio desc limit 100;

/*20 Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.*/
select codigo_fabricante, nombre from producto where codigo_fabricante = 2;

/*21 Lista el nombre de los productos que tienen un precio menor o igual a 120€.*/
select nombre, precio
from producto
where precio<=120;

/*22.Lista el nombre de los productos que tienen un precio mayor o igual a 400€.*/
select nombre, precio
from producto
where precio>=400;
 
 /*23 Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.*/
select nombre, precio
from producto
where precio<400;

/*24 Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN*/
select nombre, precio
from producto
where precio>80 and precio<300;

/*25 Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.*/
select nombre, precio 
from producto 
where precio between 60 and 200;

/*26 Lista todos los productos que tengan un precio mayor que 200€ y que el código de fabricante sea igual a 6.*/
select codigo_fabricante, nombre, precio 
from producto 
where codigo_fabricante = 2 and precio > 200;

 /*27 Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.*/
 select * from producto 
 where codigo % 2 != 0
 order by codigo limit 0,3;
 
 /*28 Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador IN*/
 select * from producto
 where codigo in(1,5,3);
 
 /*29 Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.*/
 select nombre, precio*100 as centimos 
 from producto;
 
 /*30 Lista los nombres de los fabricantes cuyo nombre empiece por la letra S*/
 select * from fabricante
 where nombre like 'S%';
 
 /*31 Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.*/
 select * from fabricante
 where nombre like '%e';

 /*32 Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.*/
 SELECT nombre FROM fabricante WHERE nombre LIKE "%w%";
 
 /*33 Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.*/
 select  nombre from fabricante
 where length(nombre)=4;
 
 /*34 Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.*/
 select nombre, precio  FROM PRODUCTO where   nombre LIKE "%Portatil%" ;

 /*35 Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.*/
 select * from producto 
 where nombre like 'Monito%' and precio<215;
 
 /*36 Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).*/
 SELECT * FROM producto
WHERE precio >= 180
ORDER BY precio ASC, precio DESC;
