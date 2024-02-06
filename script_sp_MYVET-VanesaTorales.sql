USE MYVETdb;
DROP PROCEDURE IF EXISTS sp_InsertarDoctor;
DELIMITER //

-- SP que me permite insertar nuevo/a doctor/a.
CREATE PROCEDURE sp_InsertarDoctor(
    IN nombre VARCHAR(30),
    IN apellido VARCHAR(30)
)
BEGIN
    INSERT INTO Doctor (nombreDoc, apellidoDoc) VALUES (nombre, apellido);
END //

DELIMITER ;

SELECT sp_InsertarDoctor('Vanesa', 'Torales');
SELECT * FROM doctor;

DROP PROCEDURE IF EXISTS sp_EliminarDoctor;
DELIMITER //

-- SP que me permite eliminar un doctor por número de ID.
CREATE PROCEDURE sp_EliminarDoctor(
    IN id_doctor INT
)
BEGIN
    DELETE FROM Doctor WHERE ID_doctor = id_doctor;
END //

DELIMITER ;

SELECT sp_EliminarDoctor(44); -- Modificar ID
SELECT * FROM doctor;