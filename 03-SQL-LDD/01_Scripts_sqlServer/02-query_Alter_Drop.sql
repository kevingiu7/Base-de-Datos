-- crear base de datos empresapatito
CREATE DATABASE empresapatito;
go

--usar la BD
use empresapatito;
Go

--crar tabla patito
CREATE TABLE empleados(
Idempleado int not null ,
Nombre VARChAR(100) not null,
Puesto varchar(50) null,
FechadeIngreso date ,
Salario decimal(10,2) not null,
CONSTRAINT pk_empleados
PRIMARY KEY(Idempleado)


);
GO

-- Agregar una columna en la tabla empleados
ALTER TABLE empleados
ADD CorreoElectronico varchar(100);
GO

-- Modificar el tipo de dato de un campo
ALTER TABLE empleados
ALTER COLUMN Salario money not null;
GO
-- renombrar un campo
EXEC sp_rename 'empleados.CorreoElectronico', 'Email', 'COLUMN';
GO
select * from empleados

-- cerar tabla departamentos
CREATE TABLE departamentos(
IdDepartamento int not null identity(1,1) primary key,
NombreDepto varchar(100),

);
go
-- agregar un campo a la tabla empleados
-- para que sea una foreing key
ALTER TABLE empleados
ADD IdDepartamento int not null;
GO

--Agregar llave foranea
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_departamentos
FOREIGN KEY (IdDepartamento) 
REferences departamentos(IdDepartamento);
GO

-- Eliminar la clave primaria de empleados
alter table empleados
drop CONSTRAINT pk_empleados;
GO
-- eliminar la foreign key de la tabla empelados
alter table empleados
drop CONSTRAINT fk_empleados_departamentos;
go
--eliminar la prinary key de departamentos
ALter table departamentos
drop constraint [PK__departam__787A433D5FAAFC6D];
go

--crear un contraint de verificacion en salario
alter table empleados
add constraint chk_Salario
check (Salario > 0.0);
go



create table categoria(
id int not null primary key default -1,
Nombre varchar(20),
estatus char(1) default 'A'

);
go
insert into categoria
values (1,'carnes','D');
go

select * from categoria

insert into categoria
values (default,'carnes',default)

drop table categoria;

--eliminar la colunma email
alter table empleados
drop column Email;

alter table empleados
add constraint pk_empleados
primary key (Idempleado);
go

alter table departamento
add constraint pk_empleados
primary key (IdDepartementos);
go

--eliminar las tablas
Drop table empleados;
go

Drop table departamentos;

drop database empresapatito

