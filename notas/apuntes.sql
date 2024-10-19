-- select
select nombre de campos
from nombre de tablas  --y los alias x ejm tabla socio seria s.socio
join direcciones d on d.direccion_id = s.direcciones_id  --esto une las id_direcciones de la tabla direccions con las id_direcciones de la tabla socios que sean iguales
where condiciones    --ejm para qie te de solo el id 1 ; where socio_id = 1
group by agrupar datos
order by ordenar


ejm
insert to socios(nombrem calle, fechanacimiento)
select s.nombre,
s
from socios; esto trae todos los datos
where nombre = 'nombre'

...................................................
insert to socios(nombre, calle, fecha_nacimiento)
select x.nombre,
d.calle,
x.fecha_nacimiento 
from socios x 
join direcciones d on d.direccion_id =x.direccion_id 
where x.fecha_nacimiento < '2011-07-20' 
order by x.fecha_nacimiento