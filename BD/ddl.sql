CREATE TABLE categoria(
    idCategoria INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(255),
    CONSTRAINT categoria_pk PRIMARY KEY(idCategoria)
);

CREATE TABLE producto(
    idProducto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(90) NOT NULL,
    cantidad INT(11) NOT NULL,
    disponible BOOLEAN DEFAULT TRUE,
    categoria INT NOT NULL,
    CONSTRAINT producto_pk PRIMARY KEY(idProducto),
    CONSTRAINT producto_categoria_fk FOREIGN KEY(categoria) REFERENCES categoria(idCategoria)
);

CREATE TABLE usuario(
    idUsuario INT NOT NULL AUTO_INCREMENT,
    correo VARCHAR(200) NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    CONSTRAINT usuario_pk PRIMARY KEY(idUsuario),
    CONSTRAINT usuario_uq UNIQUE(correo)
);

CREATE TABLE compra(
    idCompra INT NOT NULL AUTO_INCREMENT,
    usuario INT NOT NULL,
    producto INT NOT NULL, 
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valor_compra FLOAT NOT NULL,
    CONSTRAINT compra_pk PRIMARY KEY(idCompra),
    CONSTRAINT compra_usuario_fk FOREIGN KEY(usuario) REFERENCES usuario(idUsuario),
    CONSTRAINT compra_producto_fk FOREIGN KEY(producto) REFERENCES producto(idProducto)
);