-- tento view vraci TOP 5 kurzu s nejvice zapsanymi studenty
SELECT course_id, COUNT(*) AS BestCourses
FROM student_course_signup
GROUP BY course_id
LIMIT 5;