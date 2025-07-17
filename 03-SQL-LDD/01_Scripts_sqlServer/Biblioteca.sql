Create database Bilbio;
use Bilbio;

-- Crear tabla Libros
CREATE TABLE Libros (
    NumLibro INT NOT NULL,
    ISBN VARCHAR(20),
    Autor VARCHAR(100),
    Titulo VARCHAR(100),
    Cantidad INT CHECK(Cantidad >= 0),
    CONSTRAINT pk_libros PRIMARY KEY (NumLibro)
);
GO

-- Crear tabla Lector
CREATE TABLE Lector (
    NumLector INT NOT NULL,
    NrMembresia VARCHAR(20),
    Nombre VARCHAR(50),
    ApellidoM VARCHAR(50),
    ApellidoP VARCHAR(50),
    CONSTRAINT pk_lector PRIMARY KEY (NumLector)
);
GO

-- Tabla intermedia Prestamo
CREATE TABLE Prestamo (
    NumLibro INT NOT NULL,
    NumLector INT NOT NULL,
    FechaPrestamo DATE,
    FechaDevolucion DATE,
    CONSTRAINT pk_prestamo PRIMARY KEY (NumLibro, NumLector),
    CONSTRAINT fk_prestamo_libro FOREIGN KEY (NumLibro) REFERENCES Libros(NumLibro),
    CONSTRAINT fk_prestamo_lector FOREIGN KEY (NumLector) REFERENCES Lector(NumLector)
);
GO