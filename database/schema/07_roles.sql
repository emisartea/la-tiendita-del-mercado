

-- Datos básicos de roles (opcional, también podrías poner esto en un archivo de seeds)
INSERT INTO roles (code, name, description) VALUES ('admin', 'Administrador', 'Acceso completo al Back Office');
INSERT INTO roles (code, name, description) VALUES ('cliente', 'Cliente', 'Cliente registrado de la tienda');
INSERT INTO roles (code, name, description) VALUES ('operador', 'Operador de Contenido', 'Gestiona productos y CMS');
INSERT INTO roles (code, name, description) VALUES ('profesor', 'Profesor/Evaluador', 'Usuario para revisión académica');
-- Roles y permisos
