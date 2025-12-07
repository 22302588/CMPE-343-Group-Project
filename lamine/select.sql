-- List each course with its total modules and total lessons
SELECT
    courses.id,
    courses.title, 
    Count(DISTINCT modules.title) as total_modules, 
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

-- List courses that depend on another specific course
SELECT courses.title course, c2.title dependents FROM courses
JOIN prerequisites 
ON prerequisites.dependon_id = courses.id
JOIN courses c2 ON c2.id = prerequisites.course_id
WHERE courses.id = 1

-- Find modules that contain more than 5 lessons
SELECT modules.title modules, COUNT(DISTINCT lessons.title) total_lessons 
FROM modules
JOIN lessons ON lessons.module_id = modules.id
GROUP BY modules.id
HAVING (COUNT(DISTINCT lessons.title) > 2);