CREATE DATABASE Ejercicio1999;
go

USE Ejercicio1999;
go

CREATE TABLE Empleado(
 EmpleadoId int not null identity(1,1),
 Nombre nvarchar(15) not null,
 Apellido1 nvarchar(20) not null,
 Apellido2 nvarchar(15),
 Direccion nvarchar(50)  not null,
 Salario decimal(10,2) not null,
 Jef int ,
 departamento int not null,
 CONSTRAINT pk_empleado
 primary key (EmpleadoId),
 CONSTRAINT chk_salario
 Check (Salario between 200 and 500000),
 CONSTRAINT fk_empleado_jefe
 FOREIGN KEY (Jef)
 References empleado(EmpleadoId)
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION


);
go

CREATE TABLE Departamento(
DepartamentoId int not null identity(1,1),
NombreDepto nvarchar(20) not null,
Estatus char(2) not null,
administrador int not null,
CONSTRAINT pk_departamento
primary key (DepartamentoId),
CONSTRAINT unique_nombredepto
UNIQUE(NombreDepto),
CONSTRAINT chk_estatus
CHECK(Estatus in ('SI', 'NO')),
CONSTRAINT fk_empleado_depto
FOREIGN KEY(administrador)
REFERENCES Empleado(EmpleadoId)

);
go

ALTER TABLE Empleado
ADD CONSTRAINT fk_empleado_depto1
FOREIGN KEY (departamento)
REFERENCES Departamento(DepartamentoId);
go

Create table Ubicacion(
 UbicacionId int not null identity(1,1),
 Ubicacion nvarchar(15) not null,
 DeptoId int not null,
 CONSTRAINT pk_ubicacion
 PRIMARY KEY(UbicacionId),
 CONSTRAINT unique_DeptoId
 UNIQUE(DeptoId),
 CONSTRAINT fk_ubicacion_depto
 FOREIGN KEY (DeptoId)
 REFERENCES Departamento(DepartamentoId)


);
go