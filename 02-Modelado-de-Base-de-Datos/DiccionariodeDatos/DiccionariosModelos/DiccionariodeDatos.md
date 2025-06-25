# 📘 Diccionario de Datos – Cursos
## tabla de diagrama de cursos 
| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumEstudiante`     | INT      | -      | ✅  | ❌  | ❌   | ✅     | > 0                                        | -                                | Identificador del cliente               |
| `Nombre`        | VARCHAR      | 20     | ❌  | ❌  | ❌   | ❌     | -                               | -                                | Nombre completo del cliente             |
| `ApellidoPaterno`          | INT          | 20    | ❌  | ❌  | ❌   | ❌     | -               | -                                | apellido1                      |
| `ApellidoMaterno`        | VARCHAR      | 20    | ❌  | ❌  | ❌   |   ❌  | -                   | -                                | apellido2                     |
| `Matricula`      | INT          | -      | ❌  | ❌ | ❌   |  ✅   | -                                                      |                  | Matatricula del cliente    |
