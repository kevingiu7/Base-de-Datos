-- crear base de datos empresapatito
CREATE DATABASE empresapatito;


-- usar la BD
use empresapatito;


# crar tabla patito
CREATE TABLE empleados(
Idempleado int not null ,
Nombre VARChAR(100) not null,
Puesto varchar(50) null,
FechadeIngreso date ,
Salario decimal(10,2) not null,
CONSTRAINT pk_empleados
PRIMARY KEY(Idempleado)


);


# Agregar una columna en la tabla empleados
ALTER TABLE empleados
ADD column CorreoElectronico varchar(100);


# Modificar el tipo de dato de un campo
ALTER TABLE empleados
modify COLUMN Salario decimal(12,2) not null;

# renombrar un campo
alter table empleados
rename column CorreoElectronico to Email;

select * from empleados;

# cerar tabla departamentos
CREATE TABLE departamentos(
IdDepartamento int not null auto_increment primary key,
NombreDepto varchar(100)

);

# agregar un campo a la tabla empleados
# para que sea una foreing key
ALTER TABLE empleados
ADD column IdDepartamento int not null;


# Agregar llave foranea
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_departamentos
FOREIGN KEY (IdDepartamento) 
REferences departamentos(IdDepartamento);

# Eliminar la clave primaria de empleados
alter table empleados
drop primary key ;

# eliminar la foreign key de la tabla empelados
alter table empleados
drop foreign key fk_empleados_departamentos;

# eliminar el auto_increment
alter table departamentos
modify IdDepartamento INT not null;

# eliminar la prinary key de departamentos
ALter table departamentos
drop primary key;


# crear un contraint de verificacion en salario
alter table empleados
add constraint chk_Salario
check (Salario > 0.0);




create table categoria(
id int not null primary key default -1,
Nombre varchar(20),
estatus char(1) default 'A'

);

insert into categoria
values (1,'carnes','D');


select * from categoria;

insert into categoria
values (default,'carnes',default);

drop table categoria;

# eliminar la colunma email
alter table empleados
drop column Email;

alter table departamentos
add constraint pk_departamentos
primary key (IdDepartamentos);


alter table departamento
add constraint pk_empleados
primary key (IdDepartementos);


# eliminar las tablas
Drop table empleados;


Drop table departamentos;

drop database empresapatito
