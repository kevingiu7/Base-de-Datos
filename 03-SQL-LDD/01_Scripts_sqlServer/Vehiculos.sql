CREATE DATABASE Vehiculos
go
-- Usar base de datos
USE Vehiculos;
GO

-- Tabla Cliente
CREATE TABLE Cliente (
    NumCliente INT NOT NULL,
    Nombre VARCHAR(50),
    ApellidoM VARCHAR(50),
    ApellidoP VARCHAR(50),
    CURP CHAR(18),
    Telefono VARCHAR(15),
    Direccion VARCHAR(100),
    Calle VARCHAR(50),
    Numero INT,
    Ciudad VARCHAR(50),
    CONSTRAINT pk_Cliente PRIMARY KEY (NumCliente)
);
GO

-- Tabla Sucursal
CREATE TABLE Sucursal (
    IdSucursal INT NOT NULL,
    Nombre VARCHAR(100),
    Ubicacion VARCHAR(100),
    CONSTRAINT pk_Sucursal PRIMARY KEY (IdSucursal)
);
GO

-- Tabla Vehiculo
CREATE TABLE Vehiculo (
    NumVehiculo INT NOT NULL,
    Placa VARCHAR(20),
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Anio INT,
    IdSucursal INT NOT NULL,
    CONSTRAINT pk_Vehiculo PRIMARY KEY (NumVehiculo),
    CONSTRAINT fk_Vehiculo_Sucursal FOREIGN KEY (IdSucursal) REFERENCES Sucursal(IdSucursal)
);
GO

-- Tabla Renta
CREATE TABLE Renta (
    NumCliente INT NOT NULL,
    NumVehiculo INT NOT NULL,
    FechaInicio DATE,
    FechaFin DATE,
    CONSTRAINT pk_Renta PRIMARY KEY (NumCliente, NumVehiculo),
    CONSTRAINT fk_Renta_Cliente FOREIGN KEY (NumCliente) REFERENCES Cliente(NumCliente),
    CONSTRAINT fk_Renta_Vehiculo FOREIGN KEY (NumVehiculo) REFERENCES Vehiculo(NumVehiculo)
);
GO