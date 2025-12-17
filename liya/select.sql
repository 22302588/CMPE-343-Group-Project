-- Students who have both high GPA and are active
SELECT s.f_name, s.l_name
FROM students s
JOIN transcripts t ON s.id = t.student_id
WHERE t.gpa >= 3.5
INTERSECT
SELECT s.f_name, s.l_name
FROM students s
WHERE s.status = 'active';

-- Find students with above average GPA
SELECT 
    s.f_name,
    s.l_name,
    t.gpa,
    p.name AS program_name
FROM students s
JOIN transcripts t ON s.id = t.student_id
JOIN programs p ON s.program_id = p.id
WHERE t.gpa > (
    SELECT AVG(gpa) FROM transcripts
)
ORDER BY t.gpa DESC;

-- Count students by status
SELECT 
    s.status,
    COUNT(*) AS student_count,
    AVG(t.gpa) AS avg_gpa
FROM students s
JOIN transcripts t ON s.id = t.student_id
GROUP BY s.status
ORDER BY student_count DESC;