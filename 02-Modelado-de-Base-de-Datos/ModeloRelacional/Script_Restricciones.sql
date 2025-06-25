-- Crear Base de datos
CREATE DATABASE restriccionesbdg1;

--utilizar la base de datos
USE restriccionesbdg1;
-- CREAR LA TABLA CATEGORIA
CREATE TABLE categoria(
categoriaid int,
nombre nvarchar(30)
);

insert into categoria 
values(1, ' Carnes Frias') ;

select * FROM categoria;

insert into categoria 
values(1, ' Vinos y Licores') ;

insert into categoria 
values(null, ' Ropa') ;

DROP TABLE categoria;

CREATE TABLE categoria(
categoriaid int not null,
	nombre nvarchar(30) not null,
	constraint pk_categoria
	primary key (categoriaid)
);
insert into categoria 
values(1, ' Carnes Frias') ;


insert into categoria 
values(2, ' Vinos y Licores') ;

insert into categoria 
values(3, ' Ropa') ;

select * FROM categoria;

insert into categoria 
values(4, ' Ropa') ;

DROP TABLE categoria;

CREATE TABLE categoria(
categoriaid int not null,
	nombre nvarchar(30) not null,
	constraint pk_categoria
	primary key (categoriaid),
	constraint unique_nombre
	unique(nombre)
);

CREATE TABLE categoria(
categoriaid int not null,
	nombre nvarchar(30) not null,
	constraint pk_categoria
	primary key (categoriaid),
	constraint unique_nombre
	unique(nombre)

);

DROP TABLE producto;

CREATE TABLE producto(
productoID int not null,
nombreprod nvarchar(20) not null,
precio money not null,
existencia numeric(10,2) not null,
categoria int,
constraint pk_producto
primary key(productoid),
constraint unique_nombreprod 
unique(nombreprod),
constraint chk_precio 
check (precio>0 and precio<=4000),
constraint chk_existencia
check(existencia>=0),
constraint fk_producto_categoria
foreign key (categoria)
references categoria (categoriaid)
);

insert into categoria 
values(1, ' Carnes Frias') ;


insert into categoria 
values(2, ' Vinos y Licores') ;

insert into categoria 
values(8, ' Ropa China') ;

INSERT INTO producto
values(1,'tonayan',4000,4,2)

INSERT INTO producto
values(2,'tonayan2',1250.6,40,2)

INSERT INTO producto
values(3,'Bucaña',250,3,2)

INSERT INTO producto
values(4,'Calzon Chino',6.3,890,8)

select * from producto as p
INNER JOIN categoria as c
ON c.categoriaid = p.categoria;