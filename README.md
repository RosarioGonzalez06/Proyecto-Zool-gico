# Proyecto Base de Datos: Zoo
 Hecho por: Rosario González Ortiz

 ## Especificación del proyecto

**Animal**: se debe registrar su código, nombre, sexo y fecha de nacimiento. Cada animal pertenece a una especie específica, vive en un recinto, es cuidado por muchos cuidadores (o todavía no tener uno asignado) y consume diferentes alimentos (o no tener ninguno asignado porque se acaba de incorporar al zoo). 

**Especie**: se debe registrar su código, tipo y descripción. Además hay que tener en cuenta que en el zoo, de una especie puede haber muchos animales, o no tener asignado aún ningún animal.

**Recinto**:tienen un código, nombre y descripción. Un recinto puede albergar múltiples animales o no tener ninguno por el momento.

**Cuidador**: se debe registrar su código, nombre, apellido,fecha de nacimiento, cargo (crear otra tabla para mayor optimización), teléfono y fecha de ingreso. Cada cuidador puede estar encargado del cuidado de varios animales o de ninguno si lo acaban de contratar o los animales que tenía a su cargo han fallecido o los han trasladado.

**Alimento**: se debe registrar su código y nombre.Un alimento es comido por muchos animales o por ninguno si todavía no se ha decidido a quién dárselo.

## Diagrama Entidad-Relación
![Diagrama ER](/imagenes/Captura%20de%20pantalla%202025-04-22%20134903.png)

## Diagrama Referencial
![Diagrama Ref](imagenes/Captura%20de%20pantalla%202025-04-22%20135014.png)

## Menú de Java

**1. Registro de Animales**

-Case 1: Registrar un nuevo animal.(Create)

- Case 2: Modificar la información de un animal.(Update)
Case 3: Consultar la lista de animales.(List)
Case 4: Consultar animal por su nombre(List)
Case 5: Eliminar un animal.(Delete)
Case 6: Crear fichero con la lista de animales disponibles (Export)
Case 7: Salir

**2. Registro de cuidadores**

Case 1: Agregar un nuevo cuidador.(Create)
Case 2: Actualizar datos de un cuidador.(Update)
Case 3:Asignar animales a cuidadores.(Insert)
Case 4: Listar cuidador por su nombre y apellido.(List)
Case 5: Listar cuidadores y los animales que cuidan.(List)
Case 6: Eliminar un cuidador.(Delete)
Case 7: Crear fichero con la lista de cuidadores disponibles(Export)
Case 8: Salir

**3. Registrar cargos**

Case 1:Registrar un nuevo cargo(Create)
Case 2: Listar cargos(List)
Case 3: Eliminar cargo(Delete)
Case 4: Crear fichero con la lista de cargos disponibles(Export)
Case 5: Salir

**4. Registro de recintos**

Case 1:Registrar un nuevo recinto.(Create)
Case 2: Consultar los recintos(List)
Case 3: Consultar recinto por nombre(List)
Case 4: Eliminar recinto(Delete)
Case 5: Crear fichero con la lista de recintos disponibles(Export)
Case 6: Salir

**5. Registro de especies**

Case 1:Registrar una nueva especie.(Create)
Case 2: Consultar especie por tipo(List)
Case 3: Consultar todas las especies(List)
Case 4: Eliminar especie(Delete)
Case 5: Crear fichero con la lista de especies disponibles(Export)
Case 6:Salir

**6. Alimentación**

Case 1: Registrar un nuevo alimento.(Create)
Case 2: Asignar alimentos a animales (Insert)
Case 2: Ver qué animales se alimentan de un determinado alimento.(List)
Case 3: Eliminar un alimento.(Delete)
Case 4: Crear fichero con la lista de alimentos disponibles(Export)
Case 5: Salir

**7. Eliminar fichero(Delete)**

**8. Salir**

![menu](imagenes/Captura%20de%20pantalla%202025-04-25%20121007.png)

## Video de demostración del proyecto

[![Video del Zoológico](https://img.youtube.com/vi/xlty5A__LWY/0.jpg)](https://youtu.be/xlty5A__LWY?si=EPh_U_MklRg0pFED)


