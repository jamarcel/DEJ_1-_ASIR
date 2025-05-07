-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS mi_base_de_datos;
USE mi_base_de_datos;

-- Tabla cliente
CREATE TABLE cliente (
    codcli CHAR(4) NOT NULL,
    nombre VARCHAR(20),
    apellido VARCHAR(40),
    direccion VARCHAR(50),
    mail VARCHAR(100),
    PRIMARY KEY (codcli)
);

-- Tabla coche
CREATE TABLE coche (
    matricula CHAR(7) NOT NULL,
    modelo VARCHAR(40),
    combustible CHAR(1),
    motor CHAR(1),
    plazas INT,
    maletas INT,
    foto VARCHAR(15),
    codgama CHAR(2) NOT NULL,
    coste DECIMAL(10, 2),
    PRIMARY KEY (matricula)
);

-- Tabla gama
CREATE TABLE gama (
    codgama CHAR(2) NOT NULL,
    nomgama VARCHAR(20),
    stock INT,
    precio DECIMAL(10, 2),
    PRIMARY KEY (codgama)
);

-- Tabla reserva
CREATE TABLE reserva (
    cod_reserva INT NOT NULL AUTO_INCREMENT,
    fecha_res DATE NOT NULL,
    f_inicio DATE,
    dias INT,
    lugar VARCHAR(50),
    importe DECIMAL(10, 2) DEFAULT 0,
    gama CHAR(2) NOT NULL,
    cod_cliente CHAR(4) NOT NULL,
    coche CHAR(7),
    f_recogida DATE,
    f_devolucion DATE,
    s_motor CHAR(1),
    s_plazas INT,
    PRIMARY KEY (cod_reserva),
    FOREIGN KEY (gama) REFERENCES gama(codgama),
    FOREIGN KEY (cod_cliente) REFERENCES cliente(codcli),
    FOREIGN KEY (coche) REFERENCES coche(matricula)
);

-- Insertar datos en la tabla cliente
INSERT INTO cliente (codcli, nombre, apellido, direccion, mail) VALUES
('1', 'Pepe', 'García', 'Ausiach March, 23', 'pep@gmailx.com'),
('2', 'Lucas', 'Iniesta', 'Ausiach March, 23', 'lui@gmailx.com'),
('3', 'Ana', 'Lorca Sanz', 'Ausiach March, 23', 'annta@gmailx.com');

-- Insertar datos en la tabla coche
INSERT INTO coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES
('1111AAA', 'Volvo z', 'F', 'A', 5, 3, 'foto1.jpg', 'F1', 20.00),
('1112AAA', 'Volvo EX40', 'E', 'A', 5, 3, 'foto2.jpg', 'F1', 25.00),
('1001BBB', 'Ford Focus', 'H', 'A', 5, 3, 'foto4.jpg', 'F1', 25.00),
('1003TTT', 'Citroen e-c3', 'E', 'A', 7, 4, 'foto5.jpg', 'T1', 30.00),
('3003LLL', 'Mercedes', 'E', 'A', 7, 4, 'foto6.jpg', 'L1', 40.00),
('3333BBB', 'Volvo XC90', 'E', 'A', 7, 4, 'foto7.jpg', 'L1', 50.00),
('4444NNN', 'Volvo XC1', 'H', 'A', 5, 4, 'foto10.jpg', 'F1', 25.00),
('1113AAA', 'Audi A3', 'H', 'M', 5, 4, 'foto3.jpg', 'F2', 30.00),
('6666NNN', 'Fiesta', 'F', 'M', 5, 3, 'foto8.jpg', 'F2', 25.00),
('6612NNN', 'Audi A3', 'F', 'M', 5, 3, 'foto9.jpg', 'F2', 25.00);

-- Insertar datos en la tabla gama
INSERT INTO gama (codgama, nomgama, stock, precio) VALUES
('L1', 'Lujo', 2, 23.00),
('F2', 'Familiar', 3, 23.00),
('T1', '4 x 4', 1, 23.00),
('F1', 'Familiar', 4, 15.00);

-- La tabla 'reserva' no tiene datos proporcionados, por lo que omitimos la inserción.

