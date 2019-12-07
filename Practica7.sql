/** Practica 7 **/
use master

create view  Precio
as 
select * from Boleto;

create view TipoAutobus 
as 
select * from Autobus;

create view EstadoViaje
as
select * from EstadoV;

create view CiudadOrigen
as
select * from Origen;

create view CiudadDestino
as
select * from Destino;

with CantidadPasajeros
as
(select tCantidadPasajeros, COUNT (tCantidadPasajeros) as c
from Autobus
GROUP BY tCantidadPasajeros)
select * from Autobus
where tCantidadPasajeros = 56

select * INTO Autobus2 from Autobus