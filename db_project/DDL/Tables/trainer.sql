CREATE TABLE trainer (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course_id INT,
  CONSTRAINT `Trainer_FK1` FOREIGN KEY (`course_id`) REFERENCES `course` (id)
);
