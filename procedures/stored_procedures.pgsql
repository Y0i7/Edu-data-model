-- 🔹 Crear la función para hacer el respaldo de TEACHER en BACKUP_TEACHER
CREATE OR REPLACE FUNCTION PR_INSERT_BACKUPTEACHERS()
RETURNS VOID AS $$
BEGIN
    TRUNCATE TABLE BACKUP_TEACHER;
    INSERT INTO BACKUP_TEACHER
    SELECT * FROM TEACHER 
    WHERE TEACHER_EMAIL LIKE '%@GMAIL.COM'
    AND TEACHER_PHONE IS NULL;
END;
$$ LANGUAGE plpgsql;

-- 🔹 Programar la ejecución automática con pg_cron (debe estar instalado)
SELECT cron.schedule(
    'PR_INSERT_BACKUPTEACHERS_JOB',   -- Nombre del job
    '0 0 * * *',                      -- Ejecutar todos los días a las 00:00
    'SELECT PR_INSERT_BACKUPTEACHERS()'
);
