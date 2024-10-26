CREATE DATABASE la_granja_linda;
USE la_granja_linda;
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    rol VARCHAR(50),
    contraseña VARCHAR(100)
);

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20)
);
CREATE TABLE Mesa (
    idMesa INT PRIMARY KEY AUTO_INCREMENT,
    numeroMesa INT,
    capacidad INT,
    estado VARCHAR(20)
);
CREATE TABLE Producto (
    idProducto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio FLOAT,
    stock INT
);
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    fechaCreacion DATETIME,
    estado VARCHAR(20),
    clienteID INT,
    mesaID INT,
    usuarioID INT,
    FOREIGN KEY (clienteID) REFERENCES Cliente(idCliente),
    FOREIGN KEY (mesaID) REFERENCES Mesa(idMesa),
    FOREIGN KEY (usuarioID) REFERENCES Usuario(idUsuario)
);
CREATE TABLE Pago (
    idPago INT PRIMARY KEY AUTO_INCREMENT,
    pedidoID INT,
    monto FLOAT,
    metodoPago VARCHAR(50),
    estado VARCHAR(20),
    FOREIGN KEY (pedidoID) REFERENCES Pedido(idPedido)
);
CREATE TABLE ItemPedido (
    idItem INT PRIMARY KEY AUTO_INCREMENT,
    pedidoID INT,
    productoID INT,
    cantidad INT,
    precioUnitario FLOAT,
    FOREIGN KEY (pedidoID) REFERENCES Pedido(idPedido),
    FOREIGN KEY (productoID) REFERENCES Producto(idProducto)
);

