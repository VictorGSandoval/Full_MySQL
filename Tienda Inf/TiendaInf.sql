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
LIMIT 3,2

/* -.Lista todas las columnas de la tabla producto.*/
SELECT * FROM producto; 


