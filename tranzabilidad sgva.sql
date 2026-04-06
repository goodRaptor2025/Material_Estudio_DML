CREATE DATABASE tranzabilidad_sgva;
USE tranzabilidad_sgva;


CREATE TABLE Empresa (
    id_Empresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_Empresa VARCHAR(100) NOT NULL,
    codigo_Empresa VARCHAR(100) NOT NULL UNIQUE 
);


CREATE TABLE Trazabilidad (
    id_Trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    
    id_Empresa_FK INT NOT NULL, 
    
    telefono VARCHAR(100) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Estado VARCHAR(100)   NOT NULL,
    Encargado VARCHAR(100) NOT NULL,
    Fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME NOT NULL,

    CONSTRAINT fk_empresa_trazabilidad 
    FOREIGN KEY (id_Empresa_FK) REFERENCES Empresa(id_Empresa)
    ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('TICSOCIAL', 'COD1');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('GENSER POWER COLOMBIA', 'COD2');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('VC@SOFT S A S', 'COD3');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('TECPETROL COLOMBIA SAS', 'COD4');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('INDUSTRIA MILITAR', 'COD5');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES 
('TICSOCIAL', 'COD1'),
('GENSER POWER COLOMBIA', 'COD2'),
('VC@SOFT S A S', 'COD3'),
('TECPETROL COLOMBIA SAS', 'COD4'),
('INDUSTRIA MILITAR', 'COD5');


INSERT INTO Trazabilidad (id_Empresa_FK, telefono, Correo, Estado, Encargado, Fecha_inicio, fecha_fin)
VALUES (123456, '555-1234', 'contacto@ticsocial.com', 'Activo', 'maria bonilla', '2024-01-01 08:00:00', '2024-12-31 18:00:00');