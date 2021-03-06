CREATE DATABASE SendaAutobuses

CREATE TABLE [dbo].[Autobus](
iIdAutobus int PRIMARY KEY not null,
vMarca int not null,
iModelo varchar (50) not null,
tCantidadPasajeros int not null,

) 

CREATE TABLE [dbo].[Pasajero](
iIdPasajero int PRIMARY KEY not null,
vNombre varchar (50) not null,
VApePaterno varchar (50) not null,
VApeMaterno varchar (50) not null,
iEdadPas int not null,
iIdTipoPasajero int not null,
iIdVenta int not null,
)

CREATE TABLE [dbo].[TipoPasajero](
iIdTipoPasajero int PRIMARY KEY not null,
vTipoPasajero varchar(50) not null,
)

CREATE TABLE [dbo].[Boleto](
iIdBoleto int PRIMARY KEY not null,
iIdViaje int not null,
iIdAsiento int not null,
iIdPrecio int not null,
iIdCodigo int not null,
)


CREATE TABLE [dbo].[Empleado](
iIdEmpleado int PRIMARY KEY not null,
VNombreEmpleado varchar (50) not null,
vApellidoPat varchar (50) not null,
vApellidoMat varchar (50) not null,
iIdPuesto int not null
)


CREATE TABLE [dbo].[Pago](
iIdPago int PRIMARY KEY not null,
vTipoPago varchar (50) not null,

)

CREATE TABLE [dbo].[Asiento](
iIdAsiento int PRIMARY KEY not null,
iIdSituacionAsi int not null,
)

CREATE TABLE Pago(
iIdPago int PRIMARY KEY not null,
vTipoPago varchar (50) not null,

)

CREATE TABLE Venta(
iIdVenta int PRIMARY KEY not null,
iIdEmpleado int not null,
iIdPago int not null,
iIdPrecio int not null,
mTotal money not null,
dFecha date not null,
)

CREATE TABLE [dbo].[Chofer](
iIdChofer int PRIMARY KEY not null,
iIdEmpleado int not null,
iIdAutobus int not null
)


create table Puesto(
iIdPuesto int PRIMARY KEY not null,
vPuesto varchar (50) not null,
)

CREATE TABLE [dbo].[Codigo](
iIdCodigo int PRIMARY KEY not null,
uCodigo uniqueidentifier not null,
)

CREATE TABLE Ruta(
iIdRuta int PRIMARY KEY not null,
iIdOrigen int not null,
iIdDestino int not null,
)

CREATE TABLE [dbo].[Origen](
iIdOrigen int PRIMARY KEY not null,
vOrigen varchar (50) not null,
)

CREATE TABLE [dbo].[Destino](
iIdDestino int PRIMARY KEY not null,
vDestino varchar(50) not null,
)

CREATE TABLE [dbo].[EstadoV](
iIdEstadoV int PRIMARY KEY not null,
vEstadoV varchar(50) not null,

)

CREATE TABLE [dbo].[PasajeroBol](
iIdPasajeroBol int PRIMARY KEY not null,
iIdPasajero int not null,
iIdBoleto int not null,
)

CREATE TABLE [dbo].[Precio](
iIdPrecio int PRIMARY KEY not null,
mPrecio money not null,
)

CREATE TABLE [dbo].[Puesto](
iIdPuesto int PRIMARY KEY not null,
vPuesto varchar(50) not null,
)

CREATE TABLE [dbo].[SituacionAsi](
iIdSituacionAsi int PRIMARY KEY not null,
vSituacionAsi varchar(50) not null,
)

CREATE TABLE [dbo].[Viaje](
iIdViaje int PRIMARY KEY not null,
iIdRuta int not null,
iIdChofer int not null,
dFechaS date not null,
iIdEstadoV int not null,
)

insert SituacionAsi (iIdSituacionAsi, vSituacionAsi) values (1, N'Ocupado')
insert SituacionAsi (iIdSituacionAsi, vSituacionAsi) values (2, N'Disponible')
insert Asiento (iIdAsiento, iIdSituacionAsi) values (3, 1)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (4,2 )
insert Asiento (iIdAsiento, iIdSituacionAsi) values (5,2)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (6,1)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (7,1)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (8,1)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (9,2)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (10,1)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (11,1)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (12,1)
insert Asiento (iIdAsiento, iIdSituacionAsi) values (13,2)
insert Autobus (iIdAutobus, vMarca, iModelo, tCantidadPasajeros) values (14, N'Sendor', 2012, 60)
insert Autobus (iIdAutobus, vMarca, iModelo, tCantidadPasajeros) values (15, N'Coahuilense', 2010, 54)
insert Autobus (iIdAutobus, vMarca, iModelo, tCantidadPasajeros) values (16, N'Tamaulipas', 2015, 48)
insert Autobus (iIdAutobus, vMarca, iModelo, tCantidadPasajeros) values (17, N'Senda', 2014, 60)
insert Autobus (iIdAutobus, vMarca, iModelo, tCantidadPasajeros) values (18, N'Transportes del Norte', 2015, 56)
insert Autobus (iIdAutobus, vMarca, iModelo, tCantidadPasajeros) values (19, N'Coahuilense', 2011, 54)
insert Autobus (iIdAutobus, vMarca, iModelo, tCantidadPasajeros) values (20, N'Transportes del Norte', 2018, 56)
insert Puesto (iIdPuesto, vPuesto) values (23, N'Chofer')
insert Puesto (iIdPuesto, vPuesto) values (24, N'Cajera')
insert Puesto (iIdPuesto, vPuesto) values (25, N'Gerente')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (28, 23, N'Luna', N'Gloria', N'Oscar')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (29, 25, N'Manriquez', N'Ramirez', N'Laura')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (30, 23, N'Garcia', N'Saenz', N'Baldemar')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (31, 24, N'Cadena', N'Aguilar', N'Aglae')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (32, 23, N'Dimas', N'Carreon', N'Ismael')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (33, 23, N'Negrete', N'Garza', N'Miguel')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (34, 24, N'Gutierrez', N'Escamilla', N'Laura Elvia')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (35, 24, N'Rodriguez', N'Gutierrez', N'Denisse')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (36, 23, N'Ramirez', N'Latin', N'Luis')
insert Empleado (iIdEmpleado, iIdPuesto, vApellidoPat, vApellidoMat, VNombreEmpleado) values (37, 23, N'Granger', N'Nabil', N'Neyva')
insert Chofer (iIdChofer, iIdAutobus, iIdEmpleado) values (43, 14, 28)
insert Chofer (iIdChofer, iIdAutobus, iIdEmpleado) values (44, 15, 29)
insert Chofer (iIdChofer, iIdAutobus, iIdEmpleado) values (45, 16, 30)
insert Chofer (iIdChofer, iIdAutobus, iIdEmpleado) values (46, 17, 31)
insert Chofer (iIdChofer, iIdAutobus, iIdEmpleado) values (47, 18, 32)
insert Chofer (iIdChofer, iIdAutobus, iIdEmpleado) values (48, 19, 33)
insert Chofer (iIdChofer, iIdAutobus, iIdEmpleado) values (49, 20, 34)
insert Codigo (iIdCodigo, uCodigo) values (52, N'bae231e7-f97b-498c-95cb-ae2f37a25cfe')
insert Codigo (iIdCodigo, uCodigo) values (53,N'0c620e52-5ee8-4bca-807d-a7492eaea404' )
insert Codigo (iIdCodigo, uCodigo) values (54, N'd52d4d5e-219b-4eec-ae1e-dba1c0b14a9f')
insert Codigo (iIdCodigo, uCodigo) values (55, N'97eab88b-7b18-461b-ad88-146e39e95066')
insert Codigo (iIdCodigo, uCodigo) values (56, N'c9c0da02-00de-430b-a4f6-6cd392ddce4c')
insert Codigo (iIdCodigo, uCodigo) values (57, N'16f57685-1981-40a6-9912-ea0f468b7c8d')
insert Codigo (iIdCodigo, uCodigo) values (58, N'68101531-bcad-4f28-aa26-0bafba075ec5')
insert Codigo (iIdCodigo, uCodigo) values (59, N'01b02bec-4c13-47ab-b56c-809d353858b8')
insert Codigo (iIdCodigo, uCodigo) values (60, N'8a81816e-349e-438a-8f81-32d561920a25')
insert Origen (iIdOrigen, vOrigen) values (62, N'Monterrey')
insert Origen (iIdOrigen, vOrigen) values (63, N'Coahuila') 
insert Origen (iIdOrigen, vOrigen) values (64, N'Tampico')
insert Origen (iIdOrigen, vOrigen) values (65, N'Cabos')
insert Origen (iIdOrigen, vOrigen) values (66, N'Estado de Mexico')
insert Origen (iIdOrigen, vOrigen) values (67, N'Guadalajara')
insert Origen (iIdOrigen, vOrigen) values (68, N'Tijuana')
insert Origen (iIdOrigen, vOrigen) values (69, N'Tamaulipas')
insert Destino (iIdDestino, vDestino) values (71, N'Michoacan')
insert Destino (iIdDestino, vDestino) values (72, N'Saltillo')
insert Destino (iIdDestino, vDestino) values (73, N'Aguascalientes')
insert Destino (iIdDestino, vDestino) values (74, N'Ciudad Victoria')
insert Destino (iIdDestino, vDestino) values (75, N'Cuernavaca')
insert Destino (iIdDestino, vDestino) values (76, N'Puebla')
insert Destino (iIdDestino, vDestino) values (77, N'Chihuahua')
insert Destino (iIdDestino, vDestino) values (78, N'Guadalajara')
insert Destino (iIdDestino, vDestino) values (79, N'Baja California')
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (81, 62, 79)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (82, 68, 71)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (83, 65, 73)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (84, 66, 77)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (85, 63, 74)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (86, 64, 78)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (87, 67, 76)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (88, 65, 77)
insert Ruta (iIdRuta, iIdOrigen, iIdDestino) values (89, 68, 75)
insert EstadoV (iIdEstadoV, vEstadoV) values (90, N'Disponible')
insert EstadoV (iIdEstadoV, vEstadoV) values (91, N'No Disponible')
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (92, 90, CAST (N'2019-12-01' as date), 81, 43)
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (93, 90, CAST (N'2020-01-01' as date), 89, 49)
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (94, 91, CAST (N'2019-01-02' as date), 85, 42)
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (95, 90, CAST (N'2019-02-14' as date), 88, 43)
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (96, 90, CAST (N'2019-12-24' as date), 87, 48)
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (97, 90, CAST (N'2019-01-06' as date), 81, 47)
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (98, 90, CAST (N'2019-12-31' as date), 84, 46)
insert Viaje (iIdViaje, iIdEstadoV, dFechaS, iIdRuta, iIdChofer) values (99, 90, CAST (N'2019-01-25' as date), 82, 45)
insert TipoPasajero (iIdTipoPasajero, vTipoPasajero) values (100, N'Adulto Mayor')
insert TipoPasajero (iIdTipoPasajero, vTipoPasajero) values (101, N'Adulto')
insert TipoPasajero (iIdTipoPasajero, vTipoPasajero) values (102, N'Ni�o')
insert TipoPasajero (iIdTipoPasajero, vTipoPasajero) values (103, N'Estudiante')
insert Precio (iIdPrecio, mPrecio) values (104, 2500.00)
insert Precio (iIdPrecio, mPrecio) values (105, 1800.00)
insert Precio (iIdPrecio, mPrecio) values (106, 2100.00)
insert Precio (iIdPrecio, mPrecio) values (107, 1500.00)






select iIdPasajero, vNombre from Pasajero as p where p.vNombre='Laura'

select iIdEmpleado, vApellidoPat from Empleado as e where e.vApellidoPat = 'Dimas'

select iIdAutobus, vMarca from Autobus as a where a.vMarca = 'Coahuilense'

select iIdPuesto, vPuesto from Puesto as pu where pu.vPuesto = 'Chofer'

select iIdTipoPasajero, vTipoPasajero from TipoPasajero as tp where tp.vTipoPasajero = 'Ni�o'

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

create view  Precio
as 
select * from Boleto;
DROP TABLE Precio;


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

