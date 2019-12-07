/*** Practica 6 ***/
use SendaAutobuses

select iIdPasajero, vNombre from Pasajero as p where p.vNombre='Laura'

select iIdEmpleado, vApellidoPat from Empleado as e where e.vApellidoPat = 'Dimas'

select iIdAutobus, vMarca from Autobus as a where a.vMarca = 'Coahuilense'

select iIdPuesto, vPuesto from Puesto as pu where pu.vPuesto = 'Chofer'

select iIdTipoPasajero, vTipoPasajero from TipoPasajero as tp where tp.vTipoPasajero = 'Niño'

/*** Consultas Ordenadas ****/
select * from Empleado where Empleado.vApellidoPat like 'G%'

select * from Destino where Destino.vDestino like '%A'

select * from Origen where Origen.vOrigen like '%ta%'

select * from Autobus where Autobus.tCantidadPasajeros between 48 and 56

//** Consultas con Join **//

select * from Chofer left join Autobus on Chofer.iIdAutobus=Autobus.iIdAutobus

select * from Empleado left join Puesto on Empleado.iIdPuesto=Puesto.iIdPuesto

select * from PasajeroBol left join Boleto on PasajeroBol.iIdBoleto=Boleto.iIdBoleto

select * from Chofer inner join  Autobus on Chofer.iIdAutobus=Autobus.iIdAutobus

select * from Empleado inner join Puesto on Empleado.iIdPuesto=Puesto.iIdPuesto

select * from Chofer cross join Autobus 

select * from Empleado cross join Puesto

select * from PasajeroBol inner join Boleto on PasajeroBol.iIdBoleto=Boleto.iIdBoleto

select * from PasajeroBol cross join Boleto

select * from Ruta left join Destino on Ruta.iIdDestino=Destino.iIdDestino

/** Select con group **/

select COUNT (iIdEmpleado) as 'Cantidad de empleados' from Empleado
select COUNT (iIdEmpleado) as 'Cantidad de empleados' from Empleado GROUP BY iIdEmpleado

select COUNT (iIdAutobus) as 'Cantida de autobuses' from Autobus
select COUNT (iIdAutobus) as 'Cantidad de autobuses' from Autobus GROUP BY iIdAutobus

select COUNT (tCantidadPasajeros) as 'Cantidad de pasajeros' from Autobus
select COUNT (tCantidadPasajeros) as 'Cantidad de pasajeros' from Autobus GROUP BY tCantidadPasajeros

select MAX (mPrecio) as 'precios' from Precio
select MAX (mPrecio) as 'precios' from Precio GROUP BY mPrecio