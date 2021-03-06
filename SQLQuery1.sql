CREATE DATABASE VENTAS_JV



USE VENTAS_JV

CREATE TABLE PRODUCTO
(
ID_PRODUCTO int primary key,
NOMBRE text,
PRECIO money,
STOCK int
)

CREATE TABLE CLIENTE
(
ID_CLIENTE varchar(15) primary key,
NOMBRE varchar(50),
APELLIDOS varchar(50),
DIRECCION varchar(50),
FECHA_NACIMIENTO date,
TELEFONO varchar(8),
EMAIL varchar(50),
CATEGORIA varchar(25)
)

CREATE TABLE FACTURA
(NO_FACTURA char(12) primary key,
ID_CLIENTE varchar(15),
FECHA date,
FOREIGN KEY(ID_CLIENTE) references CLIENTE(ID_CLIENTE),
)
--drop table FACTURA_DETALLE
CREATE TABLE FACTURA_DETALLE
(
NUM_DETALLE int not null,
ID_FACTURA char(12) not null,
ID_PRODUCTO int,
CANTIDAD int,
PRECIO decimal(13,2),
FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTO(ID_PRODUCTO),
)

ALTER TABLE FACTURA_DETALLE add constraint PK_FACTURA_DETALLE primary key (NUM_DETALLE, ID_FACTURA)


-----

