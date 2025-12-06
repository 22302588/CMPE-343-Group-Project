-- ENTITY: STUDENT

CREATE TABLE Student
(
student_id  int PRIMARY KEY,
name  varchar(50) NOT NULL,
date_of_birth  date NOT NULL,
phone  varchar(25),
status   varchar(50) NOT NULL,
program_id   int
);

INSERT INTO Student (student_id, name, date_of_birth, phone, status, program_id)
VALUES 
(1, 'Sarah', '2005-12-11', '+905335655351', 'Active', 1122),
(2, 'Mohammed', '1998-01-4', '+90537865465', 'Not Registered', 1123),
(3, 'Steve', '1996-02-11', '+905735905351', 'Active', 1232);
SELECT * FROM Student