# 📘 Diccionario de Datos – Plantilla General
# Tabla CLiente
| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                                        | -                                | Identificador del cliente               |
| `Nombre`        | VARCHAR      | 100    | ❌  | ❌  | ❌   | ❌     |                                  | -                                | Nombre completo del cliente             |
| `apellido1`          | VARCHAR     |  30    | ❌  | ❌  | ❌   | ❌     |                          | -                                | apellidos del cliente                        |
| `apellido2`        | VARCHAR      | 30    | ❌  | ❌  | ❌   | ✅     |                   | -                                |                        |
| `curp`      | nchar        | 18     | ❌  | ❌  | ❌   | ✅     | > 0                                        |    |   curp del cliente         |
| `Telefono`      | INT          | -      | ❌  | ❌  | ❌   |  ❌    | > 0                                        |    |  Telefono Del cliente    |

# Tabla Sucursal
| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumSucusal`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                                        | -                                | Identificador de la Sucursal               |
| `NombreSurcusal`        | nVARCHAR      | 20    | ❌  | ❌  | ❌   | ✅     |                                  | -                                | Nombre completo de la Sucursal            |
| `Ubicacion`          | NVARCHAR     |  20    | ❌  | ❌  | ❌   | ✅     |                          | -                                | Ubicacion de la Surcusal                      |
                  
# Tabla Vehiculo
| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumVehiculo`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                                        | -                                | Identificador del Vehiculo               |
| `Placa`        | NCHAR      | 7    | ❌  | ✅  | ❌   | ✅     |                                  | -                                | Nombre completo de la placa           |
| `Marca`          | NVARCHAR     |  15    | ❌  | ❌  | ❌   | ✅     |                          | -                                | Ubicacion de la Surcusal   
| `Modelo`     | VARCHAR          | 20     | ❌  | ❌  | ❌   | ❌     | > 0                                        | -                                | MOdelo del Vehiculo               |
| `Anio`        | INT      | -   | ❌  | ❌  | ❌   | ❌     |                                  | -                                | Ano del vehiculo           |
| `Marca`          | NVARCHAR     |  15    | ❌  | ❌  | ❌   | ✅     |                          | -                                | Ubicacion de la Surcusal                   |                  
| `NumCliente`     | INT          | -      | ❌  | ✅  | ❌   | ❌     | > 0                                        |Cliente(NumCliente)                              | cliente que renta el vehiculo
| `NumSucusal`     | INT          | -      |❌  | ✅  | ❌   | ❌     | > 0                                        | Surcusal(NumSurcusal)                                | Es la Sucursal                |