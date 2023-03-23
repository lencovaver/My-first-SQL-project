CREATE TABLE student_course_signup (
   student_id INT,
   course_id INT,
   CONSTRAINT `StudentCourseSignup_FK1` FOREIGN KEY (`student_id`) REFERENCES `student` (id),
   CONSTRAINT `StudentCourseSignup_FK2` FOREIGN KEY (`course_id`) REFERENCES `course` (id)
  );