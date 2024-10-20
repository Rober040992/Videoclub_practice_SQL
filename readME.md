# Proyecto Videoclub

## Descripción del Proyecto
Este proyecto tiene como objetivo gestionar un videoclub, permitiendo registrar socios, películas y préstamos. Se ha diseñado una base de datos para almacenar la información relevante, utilizando tablas y restricciones para asegurar la integridad de los datos.

## Estructura de la Base de Datos
Las tablas principales del proyecto son las siguientes:

- **socio**: Almacena la información de los socios, incluyendo su nombre, apellidos, fecha de nacimiento y detalles de contacto. 
- **direccion**: Contiene la dirección de los socios, incluyendo calle, número, piso y código postal.
- **prestamos**: Registra los préstamos de películas a los socios, con fechas de alquiler y devolución.
- **copia**: Almacena las copias de las películas disponibles en el videoclub.
- **pelicula**: Contiene información sobre las películas, como título, género, director y sinopsis.

## Restricciones
Se han implementado las siguientes restricciones en las tablas:

- Clave primaria en cada tabla para asegurar la unicidad de los registros.
- Claves foráneas para mantener la integridad referencial entre las tablas:
  - La relación entre `socio` y `direccion` es la siguiente: un socio puede tener una dirección, lo que significa que `socio.id_direccion` hace referencia a `direccion.id`.
  
Nota: En el diagrama de flujo, la conexión entre `direccion` y `socio` está representada al contrario de como se muestra en la realidad.

## Archivos del Proyecto
El proyecto incluye los siguientes archivos:

- Un archivo SQL con todos los scripts necesarios para crear las tablas y establecer las restricciones.
- Un diagrama en formato `draw.io` que ilustra la estructura de la base de datos.
- Un diagrama en formato PNG como referencia visual.
- Este README en formato Markdown.

## Cómo Usar
Para utilizar este proyecto, se recomienda:

1. Clonar o descargar el repositorio.
2. Ejecutar el archivo SQL en tu sistema de gestión de bases de datos.
3. Utilizar los diagramas como referencia para comprender la estructura de la base de datos.


