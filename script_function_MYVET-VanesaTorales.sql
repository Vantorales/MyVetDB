USE MYVETdb;

-- Crear una función en MySQL para contar pacientes atendidos por un doctor
DROP FUNCTION IF EXISTS ContarPacientesAtendidosPorDoctor
DELIMITER //

CREATE FUNCTION `ContarPacientesAtendidosPorDoctor`(ID_Doctor INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE cantidad INT;

    SELECT COUNT(DISTINCT ID_Paciente) INTO cantidad
    FROM turno
    WHERE ID_Doctor = ID_Doctor;

    RETURN cantidad;
END;
//
DELIMITER ;

SELECT ContarPacientesAtendidosPorDoctor(5);

DROP FUNCTION IF EXISTS CalcularCostoTotalTurno
DELIMITER //

CREATE FUNCTION `CalcularCostoTotalTurno`(ID_Turno INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE costoTotal DECIMAL(10, 2);
    
    -- Inicializar el costo total con el precio del turno
    SELECT precio INTO costoTotal
    FROM Turno
    WHERE ID_Turno = ID_Turno;

    -- Sumar los costos de los insumos asociados al diagnóstico del turno
    SELECT SUM(i.Precio) INTO costoTotal
    FROM Insumo i
    JOIN Insumo_Diagnostico id ON i.ID_Insumo = id.ID_Insumo
    WHERE id.ID_Diagnostico IN (
        SELECT d.ID_Diagnostico
        FROM Diagnostico d
        WHERE d.ID_Turno = ID_Turno
    );

    RETURN costoTotal;
END;
//
DELIMITER ;

SELECT CalcularCostoTotalTurno(4);
