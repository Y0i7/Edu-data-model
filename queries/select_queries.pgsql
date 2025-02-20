-- 🔹 Primera consulta: Clasificación de asignaturas por créditos
SELECT
    S.SUBJECT_NAME AS SUBJECT,
    S.SUBJECT_CREDITS AS CREDITS,
    CASE
        WHEN S.SUBJECT_CREDITS BETWEEN 0 AND 2 THEN 'REGULAR'
        WHEN S.SUBJECT_CREDITS = 3 THEN 'PREREQUISITE'
        WHEN S.SUBJECT_CREDITS >= 4 THEN 'CURRICULAR'
    END AS "SUBJECT TYPE"
FROM SUBJECT S;

-- 🔹 Segunda consulta: Información de asignaturas con profesores
SELECT
    S.SUBJECT_ID AS ID_SUBJECT,
    S.SUBJECT_NAME AS SUBJECT,
    S.SUBJECT_CREDITS AS CREDITS,
    S.SUBJECT_DEPARTMENT AS DEPARTMENT,
    T.TEACHER_NAME AS TEACHER,
    TS.TEACHER_TYPE AS TYPE,
    T.TEACHER_EMAIL AS EMAIL
FROM TEACHER T
JOIN TEACHERSUBJECT TS ON T.TEACHER_ID = TS.TEACHER_ID
JOIN SUBJECT S ON S.SUBJECT_ID = TS.SUBJECT_ID
WHERE T.TEACHER_EMAIL LIKE '%@UNIVERSITY.EDU';
