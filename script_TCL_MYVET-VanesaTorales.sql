USE MYVETdb;

SELECT @@autocommit;

SET @@autocommit = 0;

insert into paciente values( 21, null,null,null,null, null ); 
START TRANSACTION;

-- Eliminar registro en la tabla Paciente
DELETE FROM Paciente WHERE ID_paciente = 21;

-- Sección para reinsertar registros en caso de eliminación accidental
/*
INSERT INTO Paciente (nombrePac, edad, especie, peso, ID_dueño) VALUES 
('Max', 5, 'Perro', 8.5, 1);
*/

-- Eliminar registro en la tabla Turno
DELETE FROM Turno WHERE ID_turno = 1;

-- Sección para reinsertar registros en caso de eliminación accidental
/*
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-09-25', '10:00:00', 'Pendiente', 'Control', 50.00, 1, 1, 1);
*/

-- Verificar los cambios
SELECT * FROM Paciente;
SELECT * FROM Turno;

-- ROLLBACK;

-- Confirmar la transacción
-- COMMIT;

-- Iniciar la transacción
START TRANSACTION;

-- Insertar nuevo registro 1
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-10', '12:00:00', 'Pendiente', 'Control', 60.00, 2, 2, 2);

-- Insertar nuevo registro 2
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-11', '13:00:00', 'Pendiente', 'Urgencia', 90.00, 3, 3, 3);

-- Insertar nuevo registro 3
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-12', '14:00:00', 'Pendiente', 'Consulta', 50.00, 4, 4, 4);

-- Insertar nuevo registro 4
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-13', '15:00:00', 'Pendiente', 'Control', 60.00, 5, 5, 5);

-- Insertar SAVEPOINT después del registro 4
SAVEPOINT after_insert_4;

-- Insertar nuevo registro 5
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-14', '16:00:00', 'Pendiente', 'Urgencia', 90.00, 6, 6, 6);

-- Insertar nuevo registro 6
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-15', '17:00:00', 'Pendiente', 'Consulta', 50.00, 7, 7, 7);

-- Insertar nuevo registro 7
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-16', '18:00:00', 'Pendiente', 'Control', 60.00, 8, 8, 8);

-- Insertar nuevo registro 8
INSERT INTO Turno (fechaTurno, horarioTurno, estado, tipoTurno, precio, ID_doctor, ID_paciente, ID_dueño) 
VALUES ('2023-10-17', '19:00:00', 'Pendiente', 'Urgencia', 90.00, 9, 9, 9);

-- Insertar SAVEPOINT después del registro 8
RELEASE SAVEPOINT after_insert_8;

-- Eliminar el SAVEPOINT de los 4 primeros registros insertados
-- ROLLBACK TO SAVEPOINT after_insert_4;

-- Verificar los cambios
SELECT * FROM Turno;

-- Confirmar la transacción
COMMIT;
