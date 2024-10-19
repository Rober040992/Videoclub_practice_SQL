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

alter table socio
add constraint pk_socio primary key (id),
add constraint fk_socio_direccion foreign key (id_direccion) references direccion(id);

alter table direccion
add constraint pk_direccion primary key (id);

alter table prestamos
add constraint pk_prestamos primary key (id),
add constraint fk_prestamos_socio foreign key (id_socio) references socio(id),
add constraint fk_prestamos_copia foreign key (id_copia) references copia(id);

alter table copia
add constraint pk_copia primary key (id),
add constraint fk_copia_pelicula foreign key (id_pelicula) references pelicula(id);

alter table pelicula
add constraint pk_pelicula primary key (id),
add constraint fk_pelicula_director foreign key (director) references socio(id);









