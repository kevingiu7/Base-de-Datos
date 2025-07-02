--  Lenguaje sql-LDD (CREATE, ALTER, DROP)

-- crear la base de datos empresa
CREATE DATABASE empresa;
Go

--utilizar la  base de datos creada
USE empresa;
GO
-- Crear la tabla empleado
create table Empleados(
IdEmpleado int not null ,
Nombre varchar(100) not null,
Puesto varchar(50) not null,
FechadeIngreso date,
Salario money not null,
CONSTRAINT pk_empleados 
primary key (IdEmpleado)
 


);
go

CREATE TABLE Productos(
ProductoId int primary key,
NombreProducto nvarchar(50) not null,
Existencia int not null,
PrecioUnitario money not null


);
GO

CREATE TABLE Productos2(
ProductoId int not null identity(1,1),
NombreProducto nvarchar(50) not null,
Existencia int not null,
Precio money not null,
constraint pk_productos2 
primary key(ProductoId),
constraint unique_nombreproducto
unique(NombreProducto),
constraint chk_existencia
CHECK (Existencia>0 AND Existencia<=1000) ,
CONSTRAINT chk_precio 
CHECK(Precio>0.0)

);
GO

--INsertar un producto en productos
INSERT INTO Productos (ProductoId, NombreProducto ,
Existencia , PrecioUnitario )
VALUES (1,'Burritos de Frijoles' , 65, 20.99 );
GO

INSERT INTO Productos (ProductoId, NombreProducto ,
Existencia , PrecioUnitario )
VALUES (1,'Burritos de Frijoles' , 65, 20.99 );
GO


SELECT * FROM Productos2;
GO

-- Insertar en la taba productos 2 con identity
INSERT INTO Productos2 ( NombreProducto ,
Existencia, Precio )
VALUES ('Burritos de Chorizo Verde' , 100, 21.00 );
GO

INSERT INTO Productos2 ( NombreProducto ,
Existencia, Precio )
VALUES ('Burritos de Chorizo Gruezo' , 450, 459.12 );
GO

INSERT INTO Productos2 ( NombreProducto ,
Existencia, Precio )
VALUES ('Burritos de frijol' , 101, 60 );
GO
