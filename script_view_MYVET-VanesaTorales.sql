USE MYVETdb;

-- Esta vista mostrará información sobre los pacientes y sus dueños.
CREATE VIEW Vista_PacientesConDueños AS
SELECT P.ID_paciente, P.nombrePac, P.edad, P.especie, P.peso, D.nombreDue, D.apellidoDue
FROM Paciente P
JOIN Dueño D ON P.ID_dueño = D.ID_dueño;

SELECT * FROM Vista_PacientesConDueños;

-- Esta vista mostrará información sobre los diagnósticos realizados, incluyendo el nombre del doctor y el nombre del paciente.
CREATE VIEW Vista_DiagnosticosConDetalles AS
SELECT D.ID_diagnostico, D.fecha, D.comentario, Doc.nombreDoc, Doc.apellidoDoc, P.nombrePac
FROM Diagnostico D
JOIN Doctor Doc ON D.ID_doctor = Doc.ID_doctor
JOIN Paciente P ON D.ID_paciente = P.ID_paciente;

SELECT * FROM Vista_DiagnosticosConDetalles;

-- Esta vista mostrará los insumos que tienen una cantidad menor o igual a 10 unidades disponibles.
CREATE VIEW Vista_InsumosAgotados AS
SELECT I.ID_insumo, I.nombreInsu, I.cantidad, I.precio
FROM Insumo I
WHERE I.cantidad <= 10;

SELECT * FROM Vista_InsumosAgotados;

-- Esta vista mostrará los turnos con estado "pendiente" junto con la información del doctor, paciente y dueño correspondientes.
CREATE VIEW Vista_TurnosPendientes AS
SELECT T.ID_turno, T.fechaTurno, T.horarioTurno, T.estado, T.tipoTurno, T.precio,
       Doc.nombreDoc, Doc.apellidoDoc, P.nombrePac, D.nombreDue, D.apellidoDue
FROM Turno T
JOIN Doctor Doc ON T.ID_doctor = Doc.ID_doctor
JOIN Paciente P ON T.ID_paciente = P.ID_paciente
JOIN Dueño D ON T.ID_dueño = D.ID_dueño
WHERE T.estado = 'Pendiente';

SELECT * FROM Vista_TurnosPendientes;

-- Esta vista mostrará información sobre los proveedores de insumos y los insumos que suministran.
CREATE VIEW Vista_ProveedoresDeInsumos AS
SELECT P.nombreProv, P.telefono, I.nombreInsu, I.cantidad, I.precio
FROM Proveedor P
JOIN Insumo_proveedor IP ON P.ID_proveedor = IP.ID_proveedor
JOIN Insumo I ON IP.ID_insumo = I.ID_insumo;

SELECT * FROM Vista_TurnosPendientes;
