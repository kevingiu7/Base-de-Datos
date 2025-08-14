--Consultas avanzadas


--Listar todos los pedidos mostrando el numero de pedido 
--su importe y el nombre y limkte de credito del cliente
SELECT p.Num_Pedido, p.Importe, c.Empresa, c.Limite_Credito
FROM Pedidos AS p
INNER JOIN Clientes AS c
on c.Num_Cli =p.Cliente

--Listar las oficinas con un objetivo superior a 600000,
--mostrando el nombre de la ciudad, el nombre del representante
--Y su puesto

Select o.Ciudad AS [Oficina],
	   r.Nombre AS [Representante],
	   r.Puesto AS [Puesto],
	   o.Objetivo As [Objetivo de ventas]
FROM Oficinas AS o
inner JOIN Representantes AS r 
On o.Jef=r.Num_Empl
WHERE o.Objetivo > 600000;

--Listar todos los pedidos, mostrando el numero de pedido, el
--importe, el nombre y limite de credito del cliente
SElect pe.Num_Pedido as [Numero pedido],
	   pe.Importe AS [Importe],
	   c.Empresa AS [CLiente],
	   c.Limite_Credito AS [Limite de credito]

 FROM Pedidos AS pe
 INNER JOIN Clientes AS c
 ON pe.Cliente = c.Num_Cli;

 SElect *

 FROM Pedidos AS pe
 INNER JOIN Clientes AS c
 ON pe.Cliente = c.Num_Cli;

 --Listar cada representante mostrando su nombre, la ciudad
 -- y la region en que trabajan
 SELECT r.Nombre AS [Nombre del empleado],
		o.Ciudad AS [Ciudad de residencia],
		o.Region AS [Region]
 FROM Representantes AS r
 INNER JOIN Oficinas AS o
 ON r.Oficina_Rep= o.Oficina

 --Listar las oficinas(ciudad), nombres y puestos de sus jefes
	SELECT o.Ciudad AS [Oficina],
		   r.Nombre AS[Nombre],
		   o.Region AS [Region]
	FROM Oficinas AS o
	INNER JOIN Representantes AS r
	ON r.Num_Empl=o.Jef
 --Listar todos los pedidos, mostrando el numero de pedido, el importe
 --y la cantidad de cada producto

 SELECT pe.Num_Pedido AS [Numero pedido],
		pe.Importe AS [Importe de compra],
		pro.Descripcion AS [Descripcion],
		pro.Stock AS [CAntidad]
 FROM Pedidos AS pe
 INNER JOIN Productos AS pro
 ON pro.Id_fab =pe.Fab 
	AND pro.Id_producto= pe.Producto; 
	--Listar los nombres de los empleados y los nombres de sus jefes
	Select empl.Nombre aS [nombre],
		   jefs.Nombre AS [jefe]	
	FROM Representantes as jefs
	INNER JOIN Representantes as empl
	ON jefs.Num_Empl = empl.Jefe
	-- Listar los pedidos con un importe superior a 25000 incluyendo el nombre del
	--pedido, el importe, el nombre del representante que tomo nota del pedido
	--y nombre del cliente
	Select p.Num_Pedido as [numero pedido],
	p.Importe AS [Importe],
	r.Nombre as [Nombre],
	c.Empresa as [Empresa]
	FROM Pedidos as p
	inner join Representantes as r
	On r.Num_Empl = p.Rep 
	inner join Clientes as c
	ON c.Num_Cli = p.Cliente
	WHERE p.Importe > 25000;
	--Listar los pedidos superiores a 25000,
	-- mostrando el numero de pedido, el nombre del cliente que
	--lo encargo y el nombre del representante asignado al cliente y el importe

