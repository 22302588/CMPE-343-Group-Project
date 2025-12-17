INSERT INTO students (id, f_name, l_name, date_of_birth, phone, status, program_id)
VALUES
(1, 'John', 'Doe', '2004-11-10', '555-1234', 'active', 1),
(2, 'Alice', 'Smith', '2003-05-22', '555-5678', 'inactive', 2),
(3, 'Michael', 'Brown', '2002-08-09', NULL, 'graduated', 3),
(4, 'Alice Malice', 'Smitherin', '2002-08-09', NULL, 'graduated', 3),
(5, 'Bartholomew Chungus', 'Ginger Snap III', '2002-08-09', NULL, 'graduated', 3),
(6, 'Percival', 'Wigglebottom', '2001-03-14', NULL, 'active', 2),
(7, 'Lucinda', 'Fluffernoodle', '2000-07-27', '555-7788', 'active', 1),
(8, 'Reginald', 'Snickerdoodle', '2002-12-01', NULL, 'inactive', 3),
(9, 'Mildred', 'Picklewick', '2003-04-18', '555-3344', 'active', 2),
(10, 'Theodore', 'Wobbleton', '2001-09-09', NULL, 'graduated', 1),
(11, 'Beatrice', 'Crumpetsworth', '2002-02-22', '555-9900', 'active', 3),
(12, 'Archibald', 'Pumpernickel', '2000-11-30', NULL, 'inactive', 2),
(13, 'Dorothy', 'Snufflepants', '2003-06-06', '555-4411', 'active', 1),
(14, 'Cornelius', 'Bumbershoot', '2001-01-19', NULL, 'graduated', 3),
(15, 'Penelope', 'Wafflecrumb', '2002-10-10', '555-2233', 'active', 2),
(16, 'Sebastian', 'Muffinridge', '2000-05-05', NULL, 'inactive', 1),
(17, 'Harriet', 'Puddleduck', '2003-08-28', '555-6677', 'active', 3),
(18, 'Edgar', 'Noodlefizz', '2001-12-12', NULL, 'graduated', 2),
(19, 'Winifred', 'Jellyspoon', '2002-07-17', '555-8899', 'active', 1),
(20, 'Barnaby', 'Crinkletoast', '2000-04-03', NULL, 'inactive', 3);

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