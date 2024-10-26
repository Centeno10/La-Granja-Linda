INSERT INTO Cliente (nombre, email, telefono) VALUES
('Juan Pérez', 'juan.perez@gmail.com', '987654321'),
('Ana Gómez', 'ana.gomez@hotmail.com', '912345678'),
('Luis Torres', 'luis.torres@yahoo.com', '934567890'),
('María Castro', 'maria.castro@gmail.com', '956789123'),
('Pedro Ruiz', 'pedro.ruiz@gmail.com', '923456789'),
('Laura Mendoza', 'laura.mendoza@yahoo.com', '987112233'),
('Felipe García', 'felipe.garcia@hotmail.com', '945612789'),
('Carla Sánchez', 'carla.sanchez@gmail.com', '987321456'),
('Ricardo Reyes', 'ricardo.reyes@gmail.com', '976541239'),
('Sofía Morales', 'sofia.morales@hotmail.com', '978623154');
INSERT INTO Mesa (numeroMesa, capacidad, estado) VALUES
(1, 4, 'Ocupada'),
(2, 6, 'Disponible'),
(3, 2, 'Ocupada'),
(4, 8, 'Disponible'),
(5, 4, 'Ocupada'),
(6, 2, 'Disponible'),
(7, 6, 'Ocupada'),
(8, 4, 'Disponible'),
(9, 6, 'Ocupada'),
(10, 2, 'Disponible');
INSERT INTO Usuario (nombre, rol, contraseña) VALUES
('Carlos Sánchez', 'Administrador', 'admin123'),
('Marta López', 'Mesero', 'mesero2023'),
('Lucía Fernández', 'Cajero', 'cajero456'),
('Jorge Ramírez', 'Mesero', 'mesero789'),
('Camila Ortega', 'Cajero', 'cajero321'),
('Eduardo Vargas', 'Administrador', 'admin456'),
('Laura Rojas', 'Mesero', 'mesero654'),
('Diego León', 'Cocinero', 'cocinero987'),
('Valeria Paredes', 'Cocinero', 'cocinero123'),
('Daniela Torres', 'Mesero', 'mesero111');
INSERT INTO Producto (nombre, descripcion, precio, stock) VALUES
('Pollo a la brasa', 'Pollo entero con papas fritas', 45.00, 30),
('1/2 Pollo a la brasa', 'Medio pollo con papas fritas', 25.00, 40),
('1/4 Pollo a la brasa', 'Cuarto de pollo con papas fritas', 15.00, 50),
('Salchipapa', 'Salchichas con papas fritas', 10.00, 60),
('Pollo broaster', 'Pollo broaster con ensalada', 18.00, 35),
('Alitas BBQ', 'Alitas de pollo con salsa BBQ', 22.00, 20),
('Anticuchos', 'Anticuchos con papas y ensalada', 12.00, 25),
('Papa rellena', 'Papa rellena con ensalada', 8.00, 45),
('Inka Cola 1L', 'Botella de Inka Cola de 1 litro', 7.00, 100),
('Chicha Morada', 'Vaso de chicha morada', 3.00, 80);
INSERT INTO Pedido (fechaCreacion, estado, clienteID, mesaID, usuarioID) VALUES
('2024-10-25 13:30:00', 'En preparación', 1, 1, 2),
('2024-10-25 14:00:00', 'Entregado', 2, 2, 2),
('2024-10-25 14:15:00', 'En espera', 3, 3, 3),
('2024-10-25 15:00:00', 'Cancelado', 4, 4, 4),
('2024-10-25 15:30:00', 'Entregado', 5, 5, 5),
('2024-10-25 16:00:00', 'En preparación', 6, 6, 6),
('2024-10-25 16:30:00', 'Entregado', 7, 7, 7),
('2024-10-25 17:00:00', 'En espera', 8, 8, 8),
('2024-10-25 17:30:00', 'Entregado', 9, 9, 9),
('2024-10-25 18:00:00', 'Cancelado', 10, 10, 10);
INSERT INTO Pago (pedidoID, monto, metodoPago, estado) VALUES
(1, 45.00, 'Tarjeta de Crédito', 'Pagado'),
(2, 25.00, 'Efectivo', 'Pendiente'),
(3, 15.00, 'Tarjeta de Débito', 'Pagado'),
(4, 18.00, 'Efectivo', 'Pendiente'),
(5, 45.00, 'Tarjeta de Crédito', 'Pagado'),
(6, 12.00, 'Efectivo', 'Pendiente'),
(7, 22.00, 'Tarjeta de Débito', 'Pagado'),
(8, 10.00, 'Efectivo', 'Pendiente'),
(9, 8.00, 'Tarjeta de Crédito', 'Pagado'),
(10, 25.00, 'Efectivo', 'Pendiente');
INSERT INTO ItemPedido (pedidoID, productoID, cantidad, precioUnitario) VALUES
(1, 1, 1, 45.00),  -- Pedido de 1 pollo a la brasa entero
(1, 9, 2, 7.00),   -- Pedido de 2 Inka Colas
(2, 2, 1, 25.00),  -- Pedido de 1/2 pollo a la brasa
(2, 10, 3, 3.00),  -- Pedido de 3 chichas moradas
(3, 4, 1, 10.00),  -- Pedido de 1 salchipapa
(4, 5, 2, 18.00),  -- Pedido de 2 pollos broaster
(5, 3, 4, 15.00),  -- Pedido de 4 cuartos de pollo
(6, 6, 1, 22.00),  -- Pedido de 1 alitas BBQ
(7, 7, 2, 12.00),  -- Pedido de 2 anticuchos
(8, 8, 3, 8.00);   -- Pedido de 3 papas rellenas
