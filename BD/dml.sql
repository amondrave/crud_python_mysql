/*
 datos para la tabla categoria
*/
INSERT INTO categoria (descripcion) VALUES ('lacteos');
INSERT INTO categoria (descripcion) VALUES ('bebidas');
INSERT INTO categoria (descripcion) VALUES ('carnes');
INSERT INTO categoria (descripcion) VALUES ('frijolados');
INSERT INTO categoria (descripcion) VALUES ('legumbres');

/*
datos para la tabla producto
*/

INSERT INTO producto (nombre,cantidad,categoria) VALUES ('leche 100ml', 2, 1);
INSERT INTO producto (nombre,cantidad,categoria) VALUES ('yogurt griego', 10, 1);
INSERT INTO producto (nombre,cantidad,categoria) VALUES ('leche descremada 200ml', 18, 1);
INSERT INTO producto (nombre,cantidad,categoria) VALUES ('carne de res 2kg', 100, 3);
INSERT INTO producto (nombre,cantidad,categoria) VALUES ('pata', 4, 3);
INSERT INTO producto (nombre,cantidad,categoria) VALUES ('gaseosa mega', 6, 2);
INSERT INTO producto (nombre,cantidad,categoria) VALUES ('jugo hit 300ml', 10, 2);

/*
Usuario de prueba
*/
INSERT INTO usuario (correo,nombre,contrasena) VALUES ('amondrave54@gmail.com','amondrave','discarok234');

/*
Prueba de compra 
*/

INSERT INTO compra (usuario,producto,valor_compra) VALUES (1,1,1800);