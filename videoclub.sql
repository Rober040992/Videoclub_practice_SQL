create schema if not exists roberpractica;

set schema 'roberpractica';

create table if not exists socio (
    id serial primary key,
    nombre varchar(30) not null,
    apellidos varchar(60) not null,
    fecha_nacimiento date not null,
    telefono varchar(9) not null,
    numero_carnet integer not null,
    id_direccion smallint NOT null,
    dni varchar(9) NOT NULL
);

create table if not exists direccion (
    id serial primary key,
    calle varchar(50) not null,
    numero smallint,
    piso varchar(10),
    codigo_postal smallint not null
);

create table if not exists prestamos (
    id serial primary key,
    fecha_alquiler date not null,
    fecha_devolucion date ,
    id_socio integer not null,
    id_copia integer not null
);

create table if not exists copia (
    id serial primary key,
    id_pelicula integer not null
);

create table if not exists pelicula (
    id serial primary key,
    titulo varchar(50) not null,
    genero varchar(20) not null,
    director integer not null,
    sinopsis text not null
);

alter table socio 
add constraint direccion_socio_fk 
foreign key (id_direccion) references direccion(id);

alter table prestamos 
add constraint prestamos_socio_fk 
foreign key (id_socio) references socio(id);

alter table prestamos 
add constraint prestamos_copias_fk 
foreign key (id_copia) references copia(id);

alter table copia
add constraint copias_peliculas_fk 
foreign key (id_pelicula) references pelicula(id);

CREATE UNIQUE INDEX idx_unique_dni ON socio (lower(dni));
CREATE UNIQUE INDEX idx_unique_direccion ON direccion (lower(calle), codigo_postal);



