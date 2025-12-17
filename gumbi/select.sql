-- Get student names along with their program names using implicit join
SELECT f_name,l_name, name 
FROM students, programs WHERE students.program_id=programs.id;

-- Find instructors who are not assigned to any groups using LEFT JOIN
SELECT i.name
FROM instructors i
LEFT JOIN groups g ON g.instructor_id = i.id
WHERE g.instructor_id IS NULL;

-- Count how many students are in group 2
SELECT COUNT(student_id) 
FROM student_groups
WHERE group_id = 2;

-- Find all groups in the Business department (NOTE: This query has incorrect JOIN logic)
SELECT * 
FROM groups
JOIN departments ON groups.instructor_id = departments.id
WHERE department_code = 'BUS';

-- Find students in groups that have no group number assigned
SELECT s.f_name, s.l_name, g.name AS group_name
FROM students s
JOIN student_groups sg ON s.id = sg.student_id
JOIN groups g ON sg.group_id = g.id
WHERE g.group_number IS NULL;

-- Count how many groups each instructor is responsible for (including instructors with 0 groups)
SELECT i.name AS instructor_name,
       COUNT(g.id) AS total_groups
FROM instructors i
LEFT JOIN groups g ON g.instructor_id = i.id
GROUP BY i.name;

-- Calculate student ages and categorize them into age groups using CASE statement
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

-- Find students whose email addresses don't contain 'university.edu'
SELECT * FROM students WHERE email NOT LIKE ('%university.edu%');

-- Join to get student information with their group, department, and program details
SELECT s.id AS student_id,s.f_name,s.l_name,sg.group_id,d.department_code,p.name
FROM student_groups sg
JOIN students s ON sg.student_id = s.id
JOIN groups g ON sg.group_id = g.id
JOIN instructors i ON g.instructor_id = i.id
JOIN departments d ON i.department_id = d.id
JOIN programs p ON s.program_id = p.id;

-- Clean instructor names
SELECT 
    i.name AS original_name,
    TRIM(i.name) AS cleaned_name,
    TRIM(LEADING 'Dr. ' FROM i.name) AS name_without_dr,
    i.email
FROM instructors i
ORDER BY i.name;

-- Combine active and graduated students
SELECT s.f_name, s.l_name, s.status
FROM students s
WHERE s.status = 'active'
UNION
SELECT s.f_name, s.l_name, s.status
FROM students s
WHERE s.status = 'graduated'
ORDER BY status, f_name;


-- Convert names to lowercase
SELECT 
    s.f_name,
    s.l_name,
    LOWER(s.f_name) AS lowercase_first_name,
    LOWER(s.l_name) AS lowercase_last_name,
    LOWER(CONCAT(s.f_name, '.', s.l_name, '@university.edu')) AS email
FROM students s
WHERE LOWER(s.f_name) LIKE '%john%' 
ORDER BY s.l_name;