-- primero se ponen los productos y ventas, y luego las lineas de ventas para seguir el orden de creacion--
--la fecha ya está pasada a  @DateTimeFormat(pattern="MM/dd/yyyy")--
--las url de las imagenes deben ser globales, no locales--
--las tablas se pueden ver creandose y en el STS hay atributos que solo son relacionales , no tienen valores--



--PRODUCTOS--
insert into producto (nombre, descripcion, imagen, pvp, descuento, id)values ('God of War','Siéntete como un dios en está épica aventura en la que te sumergiras de lleno en la cultura y mitología nórdica','https://d1x7zurbps6occ.cloudfront.net/product/xlarge/756271-203321.jpg',29.99,50.00,1 );
insert into producto (nombre, descripcion, imagen, pvp, descuento, id)values ('Elden Ring','La historia de Elden Ring es la del Sinluz, un exiliado que regresa a un marchito y enorme reino conocido como las Tierras Intermedias. Su propósito: reclamar el poder del Círculo de Elden. Una gesta que lo enfrentará a criaturas de pesadilla y un cruel destino.','https://image.api.playstation.com/vulcan/ap/rnd/202107/1612/Y5RHNmzAtc6sRYwZlYiKHAxN.png',99.99,40.00,2);
insert into producto (nombre, descripcion, imagen, pvp, descuento, id)values ('The Legend of Zelda','Link despierta tras un profundo sueño de 100 años en un misterioso templo en el reino de Hyrule; junto a él, deberemos descubrir su pasado mientras escuchamos una voz que nos incita a enfrentarnos a un malvado ser que provocó el llamado cataclismo: Ganon.','https://www.zelda.com/breath-of-the-wild/assets/media/wallpapers/tablet-1.jpg',59.99,0,3);


--VENTAS--
insert into venta (precio_total, fecha_compra ,comprador,id) values (50.97, '2022-05-19','Luismi',22);
insert into venta (precio_total, fecha_compra ,comprador,id) values (89.98, '2022-06-10','Nico',58);
insert into venta (precio_total, fecha_compra ,comprador,id) values (50.97, '2022-06-01','Ángel',77);

--LINEAVENTAS--
insert into linea_venta(videojuego_id,cantidad,precio_unitario,venta_id,id)values (3,1,59.99,22,1);
insert into linea_venta(videojuego_id,cantidad,precio_unitario,venta_id,id)values (1,1,29.99,58,2);
insert into linea_venta(videojuego_id,cantidad,precio_unitario,venta_id,id)values (3,1,59.99,58,3);
insert into linea_venta(videojuego_id,cantidad,precio_unitario,venta_id,id)values (2,3,16.99,77,4);



--empezar el conteo desde otro  hibernate_sequence para que comience desde 500--

