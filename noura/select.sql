-- Display university and department names together, sorted alphabetically by university then department
SELECT universities.name, departments.name
FROM departments
JOIN universities ON universities.id = departments.university_id
ORDER BY universities.name ASC,
 departments.name ASC;

-- Find all programs offered by universities located in the United Kingdom or United States
SELECT programs.id, programs.name
FROM programs
JOIN departments
  ON programs.department_id = departments.id
JOIN universities
  ON departments.university_id = universities.id
WHERE universities.address LIKE '%United%';

-- Count how many programs each department offers
SELECT departments.name, departments.id, COUNT(programs.id) AS programs_department
From  departments
JOIN programs ON programs.department_id = departments.id
GROUP BY departments.name, departments.id;

-- Find universities that have exactly 2 departments
SELECT universities.id 
FROM universities 
JOIN departments ON universities.id= departments.university_id 
GROUP BY universities.id
HAVING count(departments.id)=2;

-- Find the department with the highest number of programs
SELECT departments.id , departments.name, COUNT(programs.id) AS program_count
FROM departments 
LEFT JOIN programs ON departments.id = programs.department_id
GROUP BY departments.id, departments.name
ORDER BY program_count DESC
LIMIT 1;

-- List programs created in the last 90 days along with their university names
SELECT programs.id ,programs.name, universities.name , programs.created_at
FROM programs
JOIN departments ON programs.department_id = departments.id
JOIN universities ON departments.university_id = universities.id
WHERE programs.created_at >= NOW() - INTERVAL '90 days';

-- Calculate average GPA and student count for each program using AVG function
SELECT 
    programs.name AS program_name,
    AVG(transcripts.gpa) AS average_gpa,
    COUNT(students.id) AS student_count
FROM programs
JOIN students ON programs.id = students.program_id
JOIN transcripts ON students.id = transcripts.student_id
GROUP BY programs.id, programs.name
ORDER BY average_gpa DESC;
