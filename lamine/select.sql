-- Show prerequisite relationships between courses with course details
SELECT * FROM prerequisites
JOIN courses ON courses.id = prerequisites.dependon_id
JOIN courses c2 ON c2.id = prerequisites.course_id;

-- List each course with its total modules and total lessons
SELECT
    courses.id,
    courses.title, 
    COUNT(DISTINCT modules.title) as total_modules, 
    COUNT(lessons.title) as total_lessons
FROM courses 
JOIN modules ON modules.course_id = courses.id 
JOIN lessons ON lessons.module_id = modules.id
GROUP BY 
    courses.id,
    courses.title;

-- Retrieve all lessons in order for a given course
SELECT courses.title, lessons.title, lessons.lesson_order
FROM courses
JOIN modules ON courses.id = modules.course_id
JOIN lessons ON modules.id = lessons.module_id
WHERE courses.id = 1 
ORDER BY lessons.lesson_order;

-- Find all courses that have no prerequisites
SELECT courses.title, prerequisites.dependon_id
FROM courses
LEFT JOIN prerequisites 
ON prerequisites.course_id = courses.id
WHERE prerequisites.dependon_id IS NULL;

-- List courses that depend on a specific course (course ID = 1)
SELECT courses.title course, c2.title dependents FROM courses
JOIN prerequisites 
ON prerequisites.dependon_id = courses.id
JOIN courses c2 ON c2.id = prerequisites.course_id
WHERE courses.id = 1;

-- Find modules that contain more than 2 lessons (using HAVING clause)
SELECT 
    modules.title modules, 
    COUNT(DISTINCT lessons.title) total_lessons 
FROM modules
JOIN lessons ON lessons.module_id = modules.id
GROUP BY modules.id
HAVING (COUNT(DISTINCT lessons.title) > 2);

-- Find the course with the fewest total lessons (using LIMIT 1)
SELECT 
    courses.title, 
    COUNT(DISTINCT modules) total_modules, 
    COUNT(lessons) total_lessons
FROM courses
JOIN modules ON modules.course_id = courses.id
JOIN lessons ON lessons.module_id = modules.id
GROUP BY courses.title
ORDER BY total_lessons LIMIT 1;

-- Show full path of lesson: Course → Module → Lesson using string concatenation
SELECT courses.title || ' -> ' || modules.title || ' -> ' || lessons.title lesson_path
FROM lessons
JOIN modules ON modules.id = lessons.module_id
JOIN courses ON courses.id = modules.course_id;

-- MAX/MIN FUNCTIONS - Find highest and lowest grades per course
SELECT 
    c.title AS course_name,
    MAX(cr.grade) AS highest_grade,
    MIN(cr.grade) AS lowest_grade,
    COUNT(*) AS total_students
FROM courses c
JOIN course_results cr ON c.id = cr.course_id
GROUP BY c.id, c.title
ORDER BY highest_grade DESC;

-- SEARCH AND REPLACE (using REPLACE function)
SELECT 
    c.title AS original_title,
    REPLACE(c.title, 'Intro', 'Introduction') AS expanded_title,
    c.course_code,
    REPLACE(c.course_code, 'CS', 'COMP') AS new_code
FROM courses c
WHERE c.title LIKE '%Intro%'
ORDER BY c.title;