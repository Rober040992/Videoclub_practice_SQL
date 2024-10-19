create schema if not exists roberpractica;

set schema 'roberpractica';

create table if not exists socio (
    id serial primary key,
    nombre varchar(30) not null,
    apellidos varchar(60) not null,
    fecha_nacimiento date not null,
    telefono varchar(9) not null,
    numero_carnet integer not null,
    id_direccion smallint NOT NULL
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






