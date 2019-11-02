
CREATE DATABASE Senda
GO

Create table Boleto(
iIdBoleto int not null,
iIdPasajero int not null,
iIdAutobus int not null,
iIdAsiento int not null,
iIdPrecio int not null,

)

Create table Pasajero(
iIdPasajero int not null,
vNombre varchar(50) not null,
VApePaterno varchar(50) not null,
VApeMatterno varchar(50) not null,
iEdadPas int not null,
iIdTipoPasajero int not null,
)

Create table TipoPasajero(
iIdTipoPaasajero int not null,
vTipoPasajero varchar(50) not null,
)

Create table Asiento(
iIdAsiento int not null,
vSitAsiento varchar(50) not null
)

Create table Autobus(
iIdAutobus int not null,
vChofer varchar(50) not null,
vModelo varchar(50) not null,
iCantidadPas int not null,

)