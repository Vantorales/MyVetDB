 -- Se crea la tabla de registro para Turno
 -- Tabla de Registro para Turno
CREATE TABLE Turno_Log (
    ID_log INT AUTO_INCREMENT PRIMARY KEY,
    Operation VARCHAR(20),     -- Tipo de operación (INSERT, UPDATE, DELETE)
    ID_turno INT,              -- ID del turno
    Fecha_Hora TIMESTAMP,      -- Fecha y hora de la operación
    Detalles TEXT              -- Detalles adicionales o datos relevantes
);

-- Trigger BEFORE
-- Este trigger se dispara antes de que se realice una operación en la tabla Turno y registra los detalles de la operación antes de que esta se complete.
DELIMITER //

CREATE TRIGGER Before_Turno_Operation
BEFORE INSERT ON Turno
FOR EACH ROW
BEGIN
    INSERT INTO Turno_Log (Operation, ID_turno, Fecha_Hora, Detalles)
    VALUES ('INSERT', NEW.ID_turno, NOW(), 'Nuevo turno programado');
END //

DELIMITER ;

-- Trigger AFTER 
-- Este trigger se dispara después de que se realiza una operación en la tabla Turno y registra los detalles de la operación después de que se haya completado.
DELIMITER //

CREATE TRIGGER After_Turno_Operation
AFTER INSERT ON Turno
FOR EACH ROW
BEGIN
    INSERT INTO Turno_Log (Operation, ID_turno, Fecha_Hora, Detalles)
    VALUES ('INSERT', NEW.ID_turno, NOW(), 'Nuevo turno programado');
END //

DELIMITER ;

-- Se crea tabla de registro para la tabla Diagnostico
-- tabla de registro para Diagnostico
CREATE TABLE Diagnostico_Log (
    ID_log INT AUTO_INCREMENT PRIMARY KEY,
    Operation VARCHAR(20),     -- Tipo de operación (INSERT, UPDATE, DELETE)
    ID_diagnostico INT,        -- ID del diagnóstico
    Fecha_Hora TIMESTAMP,      -- Fecha y hora de la operación
    Detalles TEXT              -- Detalles adicionales o datos relevantes
);

-- Este trigger se dispara antes(BEFORE) de que se realice una operación en la tabla Diagnostico y registra los detalles de la operación antes de que esta se complete.
DELIMITER //

CREATE TRIGGER Before_Diagnostico_Operation
BEFORE INSERT ON Diagnostico
FOR EACH ROW
BEGIN
    INSERT INTO Diagnostico_Log (Operation, ID_diagnostico, Fecha_Hora, Detalles)
    VALUES ('INSERT', NEW.ID_diagnostico, NOW(), 'Nuevo diagnóstico registrado');
END //

DELIMITER ;

-- Trigger AFTER
DELIMITER //

CREATE TRIGGER After_Diagnostico_Operation
AFTER INSERT ON Diagnostico
FOR EACH ROW
BEGIN
    INSERT INTO Diagnostico_Log (Operation, ID_diagnostico, Fecha_Hora, Detalles)
    VALUES ('INSERT', NEW.ID_diagnostico, NOW(), 'Nuevo diagnóstico registrado');
END //

DELIMITER ;




