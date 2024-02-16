/*
BADE DE DATOS DE PRUEBA
*/

use MaestroDetalle
CREATE TABLE Clientes (
    IDCliente INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Sexo bit
);

CREATE TABLE Facturas (
    IDFactura INT IDENTITY(1,1) PRIMARY KEY,
    Fecha datetime,
    NoFactura numeric(18,2),
    Total nvarchar(10),
	idCliente int
);



INSERT INTO Clientes (Nombre, Apellido, Sexo)
VALUES ('brian', 'marquez', 1);
INSERT INTO Clientes (Nombre, Apellido, Sexo)
VALUES ('fabiola', 'chavez', 0);

INSERT INTO Facturas (Fecha, NoFactura, Total, idCliente )
VALUES ('2024-02-16', 001, 2000, 1);
INSERT INTO Facturas (Fecha, NoFactura, Total, idCliente )
VALUES ('2024-02-15', 002, 3000, 2);


select * from clientes
select * from facturas


-- Relacion entre tablas

aLter table Facturas
add constraint FK_Facturas_Clientes FOREIGN KEY (idCliente) References Clientes(IDCliente) 


-- prueba de selects
SELECT * from Clientes
select * from Facturas where idCliente = 2