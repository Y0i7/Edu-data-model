SELECT
    T.TEACHER_NAME AS NAME,
    T.TEACHER_EMAIL AS EMAIL,
    COUNT(DISTINCT TS.SUBJECT_ID) AS "ASSIGNED SUBJECTS"
FROM TEACHER T
JOIN TEACHERSUBJECT TS ON T.TEACHER_ID = TS.TEACHER_ID
JOIN SUBJECT S ON S.SUBJECT_ID = TS.SUBJECT_ID
GROUP BY T.TEACHER_ID, T.TEACHER_NAME, T.TEACHER_EMAIL
HAVING COUNT(DISTINCT TS.SUBJECT_ID) >= 2;
