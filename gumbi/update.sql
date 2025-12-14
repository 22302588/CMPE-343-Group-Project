UPDATE students s
SET warnings = warnings + 1
FROM student_groups sg
WHERE s.id = sg.student_id AND sg.attendance < 75;