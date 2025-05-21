#SQL--LDD
#Crea una base de datos--
CREATE DATABASE bdpruebag1;

#Cambiar de base de datos
USE bdpruebag1;
#crea una tabla
CREATE TABLE categoria(idcategoria int not null auto_increment, categorianombre nvarchar(20) not null, 
constraint pk_categoria
primary key (idcategoria)
);

create table producto(
idproducto int not null,
nombreproducto varchar(20) not null,
descripcion varchar (100) null,
existencia int not null,
precio numeric(10,2) not null,
idcategoria int not null,
constraint pk_producto 
primary key(idproducto),
constraint fk_producto_categoria
foreign key(idcategoria)
references categoria(idcategoria)

);