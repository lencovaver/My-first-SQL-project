-- tento reportovaci view vraci vsechny vhodne aliasovane sloupce ze vsech tabulek v projektu spojenych pomoci odpovidajicich JOINu
WITH cte_student_course_signup AS (
SELECT
	student.id,
    student.name as student_name,
    course.name as course_name,
    trainer.name as trainer_name,
    student_course_signup.course_id as student_signed_to_course_id
FROM student
INNER JOIN student_course_signup ON student_course_signup.student_id = student.id 
INNER JOIN course ON course.id = student_course_signup.course_id
INNER JOIN trainer ON trainer.course_id = student_course_signup.course_id)

SELECT trainer_name,
COUNT(*) AS 'Pocet studentu' 
FROM cte_student_course_signup 
GROUP BY trainer_name
LIMIT 3;

SELECT
	student_course_signup.student_id,
	student.name as student_name
FROM student_course_signup
JOIN student
ON student_course_signup.student_id = student.id
UNION
SELECT
	course.id,
    course.name as course_name,
    trainer.name as trainer_name
FROM course
JOIN trainer
ON course.id = trainer.course_id;

SELECT course_id, COUNT(*) AS BestCourses
FROM student_course_signup
GROUP BY course_id
LIMIT 5;

SELECT name, COUNT(*) as PocetKurzu
FROM trainer
WHERE course_id
GROUP BY name
HAVING COUNT(*) >= 2;