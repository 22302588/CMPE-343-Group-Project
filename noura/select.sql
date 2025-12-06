SELECT * FROM universities;

SELECT * FROM departments;

SELECT * FROM programs;


SELECT universities.name, departments.name
FROM departments
JOIN universities ON universities.id = departments.university_id
ORDER BY universities.name ASC,
 departments.name ASC;