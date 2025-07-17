-- Crear base de datos (opcional)
CREATE DATABASE Hospital;
GO

-- Usar la base de datos
USE Hospital;
GO

-- Tabla Hospital
CREATE TABLE Hospital (
    IDHospital INT NOT NULL,
    Nombre NVARCHAR(100),
    Direccion NVARCHAR(200),
    CONSTRAINT pk_Hospital PRIMARY KEY (IDHospital)
);
GO

-- Tabla Doctor
CREATE TABLE Doctor (
    IDDoctor INT NOT NULL,
    Nombre NVARCHAR(100),
    NombreM NVARCHAR(100), -- Segundo nombre (si aplica)
    ApellidoM NVARCHAR(100),
    ApellidoP NVARCHAR(100),
    IDHospital INT NOT NULL,
    CONSTRAINT pk_Doctor PRIMARY KEY (IDDoctor),
    CONSTRAINT fk_Doctor_Hospital FOREIGN KEY (IDHospital)
        REFERENCES Hospital(IDHospital)
);
GO

-- Tabla Paciente
CREATE TABLE Paciente (
    IDPaciente INT NOT NULL,
    Nombre NVARCHAR(100),
    ApellidoM NVARCHAR(100),
    ApellidoP NVARCHAR(100),
    Telefono VARCHAR(20),
    CONSTRAINT pk_Paciente PRIMARY KEY (IDPaciente)
);
GO

-- Tabla Atiende (relación M:N entre Doctor y Paciente)
CREATE TABLE Atiende (
    IDDoctor INT NOT NULL,
    IDPaciente INT NOT NULL,
    Fecha DATE NOT NULL,
    Registro NVARCHAR(200),
    CONSTRAINT pk_Atiende PRIMARY KEY (IDDoctor, IDPaciente, Fecha),
    CONSTRAINT fk_Atiende_Doctor FOREIGN KEY (IDDoctor)
        REFERENCES Doctor(IDDoctor),
    CONSTRAINT fk_Atiende_Paciente FOREIGN KEY (IDPaciente)
        REFERENCES Paciente(IDPaciente)
);
GO