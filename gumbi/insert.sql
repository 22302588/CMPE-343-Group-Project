INSERT INTO students (id, f_name, l_name, date_of_birth, phone, status, program_id)
VALUES
(1, 'John', 'Doe', '2004-11-10', '555-1234', 'active', 1),
(2, 'Alice', 'Smith', '2003-05-22', '555-5678', 'inactive', 2),
(3, 'Michael', 'Brown', '2002-08-09', NULL, 'graduated', 3);

UPDATE students s
SET warnings = warnings + 1
FROM student_groups sg
WHERE s.id = sg.student_id AND sg.attendance < 75;

INSERT INTO instructors (id, department_id, name, email, honorifics, phone)
VALUES
(1, 1, 'Dr. James Wilson', 'j.wilson@example.com', 'Dr', '555-1111'),
(2, 1, 'Sarah Connor', 's.connor@example.com', NULL, '555-2222');

UPDATE instructors
SET department_id = 3
WHERE id = 2;

INSERT INTO groups (id, name, group_number, instructor_id, course_id)
VALUES
(1, 'Group Alpha', 1, 1, 1),
(2, 'Group Beta', 2, 1, 2);

INSERT INTO student_groups (student_id, group_id)
VALUES
(1, 1),
(2, 2),
(3, 1);