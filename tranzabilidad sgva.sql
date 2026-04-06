CREATE DATABASE tranzabilidad_sgva;
USE tanzabilidad_sgva;

CREATE table Tranzabilidad (
id_Tranzabilidad int primary key not null auto_increment,
Codigo_Empresa varchar(100) not null,
telefono varchar(100) not null,
Correo varchar(100) not null,
Estado varchar(100) not null,
Encargado varchar(100) not null,
Fecha_inicio datetime not null,
fecha_fin  datetime not null
);
CREATE TABLE Empresa(
id_Empresa int primary key  not null auto_increment,
Nombre_Empresa_Empresa varchar(100) not null
);
