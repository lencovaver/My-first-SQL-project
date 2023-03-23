-- zde ulozte par SELECT dotazu vyuzivajicich JOIN, prip. UNION nad tabulkami v projektu
SELECT course.name
FROM course
UNION
SELECT trainer.name
FROM trainer;

SELECT
	course.id,
    course.name as course_name,
    trainer.name as trainer_name
FROM course
JOIN trainer
ON course.id = trainer.course_id;

SELECT student_id, COUNT(*) AS NumberOfCourses
FROM student_course_signup
GROUP BY student_id;