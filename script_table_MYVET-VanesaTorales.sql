DROP DATABASE IF EXISTS MYVETdb;
CREATE DATABASE MYVETdb;
USE MYVETdb;

-- Tablas
CREATE TABLE Doctor (
    ID_doctor INT AUTO_INCREMENT,
    nombreDoc VARCHAR(50),
    apellidoDoc VARCHAR(50),
    especialidad VARCHAR(50),
    CONSTRAINT PK_DOCTOR PRIMARY KEY (ID_doctor)
);

CREATE TABLE Dueño (
    ID_dueño INT AUTO_INCREMENT,
    nombreDue VARCHAR(50),
    apellidoDue VARCHAR(50),
    direccion VARCHAR(80),
    telefono VARCHAR(20),
    CONSTRAINT PK_DUEÑO PRIMARY KEY (ID_dueño)
);

CREATE TABLE Paciente (
    ID_paciente INT AUTO_INCREMENT,
    nombrePac VARCHAR(50),
    edad INT,
    especie VARCHAR(50),
    peso DECIMAL(10, 2),
    ID_dueño INT,
    CONSTRAINT PK_PACIENTE PRIMARY KEY (ID_paciente),
    FOREIGN KEY (ID_dueño) REFERENCES Dueño(ID_dueño)
);

CREATE TABLE Diagnostico (
    ID_diagnostico INT AUTO_INCREMENT,
    fecha DATETIME,
    comentario VARCHAR(200),
    ID_doctor INT,
    ID_paciente INT,
    ID_turno INT,
    CONSTRAINT PK_DIAGNOSTICO PRIMARY KEY (ID_diagnostico),
    FOREIGN KEY (ID_doctor) REFERENCES Doctor(ID_doctor),
    FOREIGN KEY (ID_paciente) REFERENCES Paciente(ID_paciente)
);

CREATE TABLE Turno (
	ID_turno INT AUTO_INCREMENT,
    fechaTurno DATE,
    horarioTurno TIME,
    estado VARCHAR(50),
    tipoTurno VARCHAR(50),
    precio DECIMAL, 
    ID_doctor INT,
    ID_paciente INT,
    ID_dueño INT,
    CONSTRAINT PK_TURNO PRIMARY KEY (ID_turno),
	FOREIGN KEY (ID_doctor) REFERENCES Doctor(ID_doctor),
    FOREIGN KEY (ID_paciente) REFERENCES Paciente(ID_paciente),
    FOREIGN KEY (ID_dueño) REFERENCES Dueño(ID_dueño)
);

CREATE TABLE Insumo (
    ID_insumo INT AUTO_INCREMENT,
    nombreInsu VARCHAR(50),
    cantidad INT,
    precio DECIMAL(10, 2),
    CONSTRAINT PK_INSUMO PRIMARY KEY (ID_insumo)
);

CREATE TABLE Proveedor (
    ID_proveedor INT AUTO_INCREMENT,
    nombreProv VARCHAR(50),
    telefono VARCHAR(20),
    CONSTRAINT PK_PROVEEDOR PRIMARY KEY (ID_proveedor)
);

-- Tablas de relación
CREATE TABLE Insumo_proveedor (
    ID_proveedor INT,
	ID_insumo INT,
    PRIMARY KEY (ID_proveedor,ID_insumo),
    FOREIGN KEY (ID_proveedor) REFERENCES Proveedor(ID_proveedor),
	FOREIGN KEY (ID_insumo) REFERENCES Insumo(ID_insumo)
);

CREATE TABLE Insumo_diagnostico (
    ID_diagnostico INT,
	ID_insumo INT,
    PRIMARY KEY (ID_diagnostico,ID_insumo),
    FOREIGN KEY (ID_diagnostico) REFERENCES Diagnostico(ID_diagnostico),
	FOREIGN KEY (ID_insumo) REFERENCES Insumo(ID_insumo)
);

