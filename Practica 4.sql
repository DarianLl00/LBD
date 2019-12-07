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
iPuesto int not null
)


CREATE TABLE [dbo].[Pago](
iIdViaje int PRIMARY KEY not null,
iIdChofer int not null,
iIdRuta int not null,
iIdEstadoViaje int not null,

)

CREATE TABLE [dbo].[Asiento](
iIdAsiento int PRIMARY KEY not null,
iIdSituacionAsi int not null,
)

CREATE TABLE EstadoViaje(
iIdEstadoViaje int PRIMARY KEY not null,
iIdventa int not null,

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