`docker --version`permite ver la version
---
`docker images`permite ver las imagenes
---

Ejemplo de creacion de contenedor basico
---
```docker
$ docker run --name mysqlv1 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:lastest
```
---
`docker ps` permite vizualizar los contenedores que estan en ejecucioo
---
 `docker ps -a` permite vizualizar todos los contenedores en ejecucion o no
---
 `Docker stop` id o nombre del contenedor
---
 `docker start`"id o nombre del contenedor"-->inicia un contenedor
---
  `docker rm -f`"nombre o id del contenedor"--> Fuerza la eliminacion del contenedor sin reiniciarlo 
---
