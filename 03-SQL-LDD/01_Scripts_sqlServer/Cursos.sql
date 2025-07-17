CREATE DATABASE cursos
go
-- Usar base de datos
USE Cursos;
GO

-- Tabla Estudiante
CREATE TABLE Estudiante (
    NumEstudiante INT NOT NULL,
    Nombre VARCHAR(50),
    ApellidoM VARCHAR(50),
    ApellidoP VARCHAR(50),
    CONSTRAINT pk_Estudiante PRIMARY KEY (NumEstudiante)
);
GO

-- Tabla Curso
CREATE TABLE Curso (
    NumCurso INT NOT NULL,
    Codigo VARCHAR(10),
    Nombre VARCHAR(100),
    CONSTRAINT pk_Curso PRIMARY KEY (NumCurso)
);
GO

-- Tabla Matricula (relación N:M entre Estudiante y Curso)
CREATE TABLE Matricula (
    NumEstudiante INT NOT NULL,
    NumCurso INT NOT NULL,
    CONSTRAINT pk_Matricula PRIMARY KEY (NumEstudiante, NumCurso),
    CONSTRAINT fk_Matricula_Estudiante FOREIGN KEY (NumEstudiante) REFERENCES Estudiante(NumEstudiante),
    CONSTRAINT fk_Matricula_Curso FOREIGN KEY (NumCurso) REFERENCES Curso(NumCurso)
);
GO