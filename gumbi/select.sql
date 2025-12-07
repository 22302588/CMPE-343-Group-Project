SELECT f_name,l_name, name FROM students,programs WHERE students.program_id=programs.id;

SELECT i.name
FROM instructors i
LEFT JOIN groups g ON g.instructor_id = i.id
WHERE g.instructor_id IS NULL;

SELECT COUNT(student_id) 
FROM student_groups
WHERE group_id = 2;

SELECT * 
FROM groups
JOIN departments ON groups.instructor_id = departments.id
WHERE department_code = 'BUS';

SELECT s.f_name, s.l_name, g.name AS group_name
FROM students s
JOIN student_groups sg ON s.id = sg.student_id
JOIN groups g ON sg.group_id = g.id
WHERE g.group_number IS NULL;

SELECT i.name AS instructor_name,
       COUNT(g.id) AS total_groups
FROM instructors i
LEFT JOIN groups g ON g.instructor_id = i.id
GROUP BY i.name;

SELECT 
    sg.student_id,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, s.date_of_birth)) AS age_in_years,
    CASE
        WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, s.date_of_birth)) < 20 
            THEN 'Under 20'
        WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, s.date_of_birth)) BETWEEN 20 AND 25 
            THEN '20–25'
        WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, s.date_of_birth)) > 25 
            THEN 'Over 25'
        ELSE 'Unknown'
    END AS age_group
FROM student_groups sg
JOIN students s ON s.id = sg.student_id;



