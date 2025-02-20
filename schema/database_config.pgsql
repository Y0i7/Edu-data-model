-- 🔹 Crear la base de datos con codificación LATIN1
CREATE DATABASE SCHOOL_DB
ENCODING 'LATIN1'
LC_COLLATE 'en_US.utf8'
LC_CTYPE 'en_US.utf8';

-- 🔹 Conectarse a la base de datos (en PostgreSQL se usa `\c`)
\c SCHOOL_DB;

-- 🔹 Eliminar la base de datos (requiere estar fuera de ella)
\c postgres;  -- Cambiamos a otra BD antes de eliminar
DROP DATABASE SCHOOL_DB;
