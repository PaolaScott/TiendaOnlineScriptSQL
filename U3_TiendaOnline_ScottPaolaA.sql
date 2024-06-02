-- Crear la base de datos TIENDAONLINE
CREATE DATABASE TIENDAONLINE2

-- Usar la base de datos TIENDAONLINE
USE TIENDAONLINE2

-- Crear la tabla CATEGORIA
CREATE TABLE CATEGORIA (
    id_Categoria_Producto INT PRIMARY KEY NOT NULL,
    Nombre_Categoria VARCHAR(30) NOT NULL
)

-- Crear la tabla CLIENTE
CREATE TABLE CLIENTE (
    id_Cliente INT PRIMARY KEY NOT NULL,
    Nombre_Cliente VARCHAR(25) NOT NULL,
    apP_Cliente VARCHAR(25) NOT NULL,
	apM_Cliente VARCHAR(25) NOT NULL,
    Email_Cliente VARCHAR(100) NOT NULL UNIQUE,
    Telefono_Cliente VARCHAR(10) UNIQUE,
	calle_Cliente VARCHAR(50) NOT NULL,
	num_Casa_Cliente VARCHAR(30) NOT NULL,
	colonia_cliente VARCHAR(50) NOT NULL,
	CodigoPostal VARCHAR(10) NOT NULL,
	Descripcion_Domicilio TEXT NOT NULL
)

-- Crear la tabla PRODUCTO
CREATE TABLE PRODUCTO 
(
    id_Producto INT PRIMARY KEY NOT NULL,
    Nombre_Producto VARCHAR(30) NOT NULL,
    Precio_Producto MONEY  NOT NULL,
	Descripcion_Producto TEXT NOT NULL,
    Productos_Disponibles INT NOT NULL,
    id_Categoria_Producto INT,
    FOREIGN KEY (id_Categoria_Producto) REFERENCES CATEGORIA(id_Categoria_Producto)
)

-- Crear la tabla PEDIDO
CREATE TABLE PEDIDO (
    id_Pedido INT PRIMARY KEY NOT NULL,
    id_Cliente  INT,
    FechaPedido DATE NOT NULL,
    Total_Pedido MONEY NOT NULL,
    FOREIGN KEY (id_Cliente ) REFERENCES CLIENTE(id_Cliente )
)

-- Crear la tabla DETALLESPEDIDO
CREATE TABLE DETALLESPEDIDO (
	id_Detalles_Pedido INT PRIMARY KEY  NOT NULL,
	id_Cliente INT NOT NULL,
	id_Categoria_Producto INT NOT NULL,
    id_Pedido INT NOT NULL,
    id_Producto INT NOT NULL,
    Cantidad_Producto INT NOT NULL,
    Precio_Producto MONEY NOT NULL,
	FOREIGN KEY (id_Cliente) REFERENCES CLIENTE(id_Cliente),
	FOREIGN KEY (id_Categoria_Producto) REFERENCES CATEGORIA(id_Categoria_Producto),
    FOREIGN KEY (id_Pedido) REFERENCES PEDIDO(id_Pedido),
    FOREIGN KEY (id_Producto) REFERENCES PRODUCTO(id_Producto)
)
/**/
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (11, 1, '2024-05-20', 175.25)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (11, 1, 2, 11, 2, 1, 175.25)

SELECT * FROM PRODUCTO
-- Inserts para la tabla CATEGORIA
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (1, 'Electrónica')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (2, 'Ropa')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (3, 'Hogar')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (4, 'Deportes')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (5, 'Alimentos')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (6, 'Libros')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (7, 'Juguetes')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (8, 'Muebles')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (9, 'Belleza')
INSERT INTO CATEGORIA (id_Categoria_Producto, Nombre_Categoria) VALUES (10, 'Automotriz')

-- Inserts para la tabla CLIENTE
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (1, 'Juan', 'Perez', 'Gomez', 'juanperez@example.com', '1234567890', 'Calle 1', '123', 'Colonia Centro', '12345', 'Casa de Juan')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (2, 'Maria', 'Gonzalez', 'Lopez', 'mariagonzalez@example.com', '0987654321', 'Calle 2', '456', 'Colonia Norte', '54321', 'Casa de Maria')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (3, 'Pedro', 'Martinez', 'Rodriguez', 'pedromartinez@example.com', '1112223333', 'Calle 3', '789', 'Colonia Sur', '67890', 'Casa de Pedro')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (4, 'Ana', 'Hernandez', 'Perez', 'anahernandez@example.com', '4445556666', 'Calle 4', '1011', 'Colonia Este', '10101', 'Casa de Ana')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (5, 'Luis', 'Lopez', 'Garcia', 'luislopez@example.com', '7778889999', 'Calle 5', '1213', 'Colonia Oeste', '13131', 'Casa de Luis')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (6, 'Laura', 'Gomez', 'Fernandez', 'lauragomez@example.com', '6667778888', 'Calle 6', '1415', 'Colonia Poniente', '14141', 'Casa de Laura')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (7, 'Carlos', 'Rodriguez', 'Sanchez', 'carlosrodriguez@example.com', '9998887777', 'Calle 7', '1617', 'Colonia Centro', '16161', 'Casa de Carlos')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (8, 'Sofia', 'Perez', 'Gonzalez', 'sofiaperez@example.com', '3332221111', 'Calle 8', '1819', 'Colonia Norte', '18181', 'Casa de Sofia')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (9, 'Pablo', 'Fernandez', 'Martinez', 'pablofernandez@example.com', '0009998888', 'Calle 9', '2021', 'Colonia Sur', '20202', 'Casa de Pablo')
INSERT INTO CLIENTE (id_Cliente, Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio) VALUES (10, 'Elena', 'Sanchez', 'Lopez', 'elenasanchez@example.com', '5554443333', 'Calle 10', '2223', 'Colonia Este', '22222', 'Casa de Elena')

-- Inserts para la tabla PRODUCTO
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (1, 'Smartphone', 5000.50, 'Teléfono inteligente de última generación', 100, 1)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (2, 'Camisa', 350.99, 'Camisa de vestir para hombre', 50, 2)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (3, 'Sofá', 20000.75, 'Sofá de tres plazas en color gris', 10, 8)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (4, 'Balón de fútbol', 150.25, 'Balón oficial de fútbol tamaño 5', 30, 4)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (5, 'Leche', 25.50, 'Leche entera en envase de 1 litro', 200, 5)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (6, 'Libro de Ciencia Ficción', 150.00, 'Novela de ciencia ficción bestseller', 20, 6)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (7, 'Muñeca', 80.00, 'Muñeca de colección con vestido rosa', 15, 7)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (8, 'Mesa de centro', 4500.00, 'Mesa de centro de madera y vidrio', 5, 8)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (9, 'Crema facial', 120.75, 'Crema hidratante para piel seca', 40, 9)
INSERT INTO PRODUCTO (id_Producto, Nombre_Producto, Precio_Producto, Descripcion_Producto, Productos_Disponibles, id_Categoria_Producto) VALUES (10, 'Llantas para auto', 2000.00, 'Juego de 4 llantas para auto', 2, 10)

-- Inserts para la tabla PEDIDO
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (1, 1, '2024-05-20', 5000.50)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (2, 2, '2024-05-19', 350.99)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (3, 3, '2024-05-18', 20000.75)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (4, 4, '2024-05-17', 150.25)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (5, 5, '2024-05-16', 25.50)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (6, 6, '2024-05-15', 150.00)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (7, 7, '2024-05-14', 80.00)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (8, 8, '2024-05-13', 4500.00)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (9, 9, '2024-05-12', 120.75)
INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido) VALUES (10, 10, '2024-05-11', 2000.00)

-- Inserts para la tabla DETALLESPEDIDO (continuación)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (1, 1, 1, 1, 1, 1, 5000.50)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (2, 2, 2, 2, 2, 1, 350.99)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (3, 3, 8, 3, 3, 1, 20000.75)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (4, 4, 4, 4, 4, 1, 150.25)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (5, 5, 5, 5, 5, 1, 25.50)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (6, 6, 6, 6, 6, 1, 150.00)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (7, 7, 7, 7, 7, 1, 80.00)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (8, 8, 8, 8, 8, 1, 4500.00)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (9, 9, 9, 9, 9, 1, 120.75)
INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto) VALUES (10, 10, 10, 10, 10, 1, 2000.00)
--sp para InsertarCliente
CREATE PROCEDURE sp_InsertarCliente
	@id_Cliente INT,
    @Nombre_Cliente VARCHAR(25),
    @apP_Cliente VARCHAR(25),
    @apM_Cliente VARCHAR(25),
    @Email_Cliente VARCHAR(100),
    @Telefono_Cliente VARCHAR(10),
    @calle_Cliente VARCHAR(50),
    @num_Casa_Cliente VARCHAR(30),
    @colonia_cliente VARCHAR(50),
    @CodigoPostal VARCHAR(10),
    @Descripcion_Domicilio TEXT
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO CLIENTE (id_Cliente,Nombre_Cliente, apP_Cliente, apM_Cliente, Email_Cliente, Telefono_Cliente, calle_Cliente, num_Casa_Cliente, colonia_cliente, CodigoPostal, Descripcion_Domicilio)
    VALUES (@id_Cliente,@Nombre_Cliente, @apP_Cliente, @apM_Cliente, @Email_Cliente, @Telefono_Cliente, @calle_Cliente, @num_Casa_Cliente, @colonia_cliente, @CodigoPostal, @Descripcion_Domicilio);
END
---ejecutar sp_InsrtarCliente

EXEC sp_InsertarCliente
	@id_Cliente= 11,
   @Nombre_Cliente = 'Martin',
    @apP_Cliente = 'Perez',
    @apM_Cliente = 'Gomez',
    @Email_Cliente = 'juanperez@gmail.com',
    @Telefono_Cliente = '9734567890',
    @calle_Cliente = 'Calle 13',
    @num_Casa_Cliente = '123',
    @colonia_cliente = 'Colonia Hawai',
    @CodigoPostal = '52345',
    @Descripcion_Domicilio = 'Casa en la playa'


---sp de detalles del pedido con join
CREATE PROCEDURE sp_DetallesPedido
AS
BEGIN
SELECT
    C.Nombre_Cliente + ' '+C.apP_Cliente+ ' '+C.apM_Cliente AS 'Nombre del Cliente',
    P.Nombre_Producto AS 'Nombre del Producto',
    P.Precio_Producto AS 'Precio del Producto',
    CAT.Nombre_Categoria AS 'Nombre de la Categoria',
	DP.Cantidad_Producto AS 'Cantidad del Producto',
	p.Descripcion_Producto AS 'Descripcion del Producto',
	DP.Cantidad_Producto * P.precio_Producto AS 'Total del Pedido'
	
FROM DETALLESPEDIDO DP
JOIN CLIENTE C ON DP.id_Cliente = C.id_Cliente
JOIN PRODUCTO P ON DP.id_Producto = P.id_Producto
JOIN CATEGORIA CAT ON DP.id_Categoria_Producto = CAT.id_Categoria_Producto
JOIN PEDIDO ON DP.id_Pedido= PEDIDO.id_Pedido
END
---ejecutar procedimiento almacenado detalles del pedido
EXEC sp_DetallesPedido

select * from CLIENTE
-- sp para actualizar productos disponibles 
CREATE PROCEDURE ActualizarProductosDisponibles
    @id_Producto INT,
    @nuevaCantidad INT
AS
BEGIN
    SET NOCOUNT ON

    UPDATE PRODUCTO
    SET Productos_Disponibles = @nuevaCantidad
    WHERE id_Producto = @id_Producto
END

---ejecutar sp actualizar productosDisponibles
exec ActualizarProductosDisponibles
 @id_Producto= 3,
    @nuevaCantidad =10
---trigger para actualizar el inventario 
CREATE TRIGGER ActualizarInventario
ON DETALLESPEDIDO
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @id_Producto INT
    DECLARE @Cantidad_Producto INT

    SELECT @id_Producto = id_Producto, @Cantidad_Producto = Cantidad_Producto
    FROM inserted

    UPDATE PRODUCTO
    SET Productos_Disponibles = Productos_Disponibles - @Cantidad_Producto
    WHERE id_Producto = @id_Producto
END


---sp para insertar un pedido y detallePedido (compra)
CREATE PROCEDURE InsertarPedidoYDetalle
    @id_Pedido INT,
    @id_Cliente INT,
    @FechaPedido DATE,
    @Total_Pedido MONEY,
    @id_Detalles_Pedido INT,
    @id_Categoria_Producto INT,
    @id_Producto INT,
    @Cantidad_Producto INT,
    @Precio_Producto MONEY
AS
BEGIN
    SET NOCOUNT ON

    -- Insertar en la tabla PEDIDO
    INSERT INTO PEDIDO (id_Pedido, id_Cliente, FechaPedido, Total_Pedido)
    VALUES (@id_Pedido, @id_Cliente, @FechaPedido, @Total_Pedido)

    -- Insertar en la tabla DETALLESPEDIDO
    INSERT INTO DETALLESPEDIDO (id_Detalles_Pedido, id_Cliente, id_Categoria_Producto, id_Pedido, id_Producto, Cantidad_Producto, Precio_Producto)
    VALUES (@id_Detalles_Pedido, @id_Cliente, @id_Categoria_Producto, @id_Pedido, @id_Producto, @Cantidad_Producto, @Precio_Producto)
END
---Ejecutar el sp compra
EXEC InsertarPedidoYDetalle
    @id_Pedido = 12,
    @id_Cliente = 1,
    @FechaPedido = '2024-05-20',
    @Total_Pedido = 1051.50,
    @id_Detalles_Pedido = 12,
    @id_Categoria_Producto = 2,
    @id_Producto = 2,
    @Cantidad_Producto = 3,
    @Precio_Producto = 350.50

SELECT * FROM PRODUCTO

