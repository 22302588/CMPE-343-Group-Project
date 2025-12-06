SELECT f_name,l_name, name FROM students,programs WHERE students.program_id=programs.id;

SELECT i.name
FROM instructors i
LEFT JOIN groups g ON g.instructor_id = i.id
WHERE g.instructor_id IS NULL;

SELECT COUNT(student_id) 
FROM student_groups
WHERE group_id = 2;

SELECT 