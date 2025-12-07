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


SELECT courses.title, lessons.title, lessons.lesson_order
FROM courses
JOIN modules ON courses.id = modules.course_id
JOIN lessons ON modules.id = lessons.module_id
WHERE courses.id = 1
ORDER BY lessons.lesson_order;

SELECT courses.title, prerequisites.dependon_id
FROM courses
LEFT JOIN prerequisites ON prerequisites.course_id = courses.id;