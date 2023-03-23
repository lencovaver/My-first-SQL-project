-- tento view vraci TOP 3 trenery s nejvetsim dosahem studentu,
-- jinymi slovy trenery, kteri vyucuji kurzy s nejvetsim poctem zapsanych studentu
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