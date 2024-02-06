-- Crear un usuario con permisos de solo lectura sobre todas las tablas de MYVETdbdiagnostico
CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'contraseña_lectura';
GRANT SELECT ON MYVETdb.* TO 'usuario_lectura'@'localhost';

-- Crear un usuario con permisos de lectura, inserción y modificación de datos en MYVETdb
CREATE USER 'usuario_edicion'@'localhost' IDENTIFIED BY 'contraseña_edicion';
GRANT SELECT, INSERT, UPDATE ON MYVETdb.* TO 'usuario_edicion'@'localhost';
