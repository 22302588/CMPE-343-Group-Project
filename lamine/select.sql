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


SELECT *
FROM lessons
