-- Crea la tabla 'users' con los campos originales, adaptados para SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Clave primaria autoincremental para SQLite
    name TEXT NOT NULL UNIQUE,          -- Nombre de usuario (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    password TEXT NOT NULL           -- Contraseña hasheada (TEXT es el tipo de cadena recomendado para SQLite)
);

CREATE TABLE persona (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dni TEXT NOT NULL,
    nombre TEXT NOT NULL,     
    apellido TEXT NOT NULL,
    direccion TEXT NOT NULL,
    contacto TEXT NOT NULL UNIQUE      
);

CREATE TABLE docente(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_person INTEGER NOT NULL UNIQUE,
    matricula INTEGER NOT NULL UNIQUE,
    CONSTRAINT fk_docente1 docente(id_person) REFERENCES persona(id)
);