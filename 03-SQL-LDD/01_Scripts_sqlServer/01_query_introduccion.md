```sql
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



-- crear dos tablas con razon de cardinalidad de 1:N con participacion total,
-- esto quiere decir que la foreign key es not null

create table categoria(
 CategoriaId int not null identity(1,1),
 Nombrecategoria nvarchar(20) not null,
 CONSTRAINT pk_categoria
 PRIMARY KEY(CategoriaId),
 CONSTRAINT unique_nombrecategoria
 UNIQUE(NombreCategoria)


);
GO

create table productos3(
ProductoId int not null identity(1,1),
Nombreproducto nvarchar(20) not null,
Existencia int not null,
PrecioUnitario money not null,
CategoriaId int not null,
CONSTRAINT pk_productos3
PRIMARY KEY(ProductoId),
CONSTRAINT chk_existencia3
CHECK(Existencia >0 and Existencia<=0),
CONSTRAINT chk_precioUnitario
Check(PrecioUnitario>0.0),
CONSTRAINT unique_nombreproducto3
UNIQUE(NombreProducto),
CONSTRAINT fk_productos3_categoria
FOREIGN KEY(CategoriaId)
REFERENCES categoria(CategoriaId)


);
GO



create table categoria2(
 Id int not null identity(1,1),
 Nombrecategoria nvarchar(20) not null,
 CONSTRAINT pk_categoria2
 PRIMARY KEY(Id),
 CONSTRAINT unique_nombrecategoria2
 UNIQUE(NombreCategoria)


);
GO

create table productos4(
ProductoId int not null identity(1,1),
Nombreproducto nvarchar(20) not null,
Existencia int not null,
PrecioUnitario money not null,
CategoriaId int not null,
CONSTRAINT pk_productos4
PRIMARY KEY(ProductoId),
CONSTRAINT chk_existencia4
CHECK(Existencia >0 and Existencia<=0),
CONSTRAINT chk_precioUnitario4
Check(PrecioUnitario>0.0),
CONSTRAINT unique_nombreproducto4
UNIQUE(NombreProducto),
CONSTRAINT fk_productos4_categoria
FOREIGN KEY(CategoriaId)
REFERENCES categoria2(Id)


);
GO

CREATE TABLE tabla1(
Tabla1Id int not null identity(1,1),
Tabla1Id2 int not null ,
Nombre nvarchar(30) not null,
CONSTRAINT pk_tabla1
PRIMARY KEY(Tabla1Id , Tabla1Id2),
 CONSTRAINT unique_nombre
 UNIQUE(Nombre)
);
GO

Create table tabla2(
Idtabla2 int not null identity (1,1),
Nombre nvarchar(30) not null,
Tabla1Id int,
Tabla1Id2 int,
CONSTRAINT pk_tabla2
PRIMARY KEY (Idtabla2),
CONSTRAINT fk_tabla2_tabla1
FOREIGN KEY(Tabla1Id , Tabla1Id2)
REFERENCES tabla1(Tabla1Id , Tabla1Id2)

);
GO

-- Crear tablas con una razon de cardianalidad 1:1
	CREATE TABLE employee(
	id int not null identity(1,1),
	nombre varchar(20) not null,
	ap1 varchar(20) not null,
	ap2 varchar(20) not null,
	sexo varchar(2) not null,
	salario money not null,
	CONSTRAINT pk_employee
	PRIMARY KEY(id)



	);

	Go

	create table deparment(
	id int not null identity(1,1),
	nombre varchar(20) not null,
	ubicaion nvarchar(30) not null,
	employeeid int not null,
	CONSTRAINT pk_deparment
	PRIMARY KEY (id),
	CONSTRAINT fk_deparment_employee
	FOREIGN KEY (employeeid)
	REFERENCES employee(id),
	unique (employeeid)
	);

```
