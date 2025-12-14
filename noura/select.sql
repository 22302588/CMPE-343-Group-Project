SELECT * FROM universities;

SELECT * FROM departments;

SELECT * FROM programs;

/*Display 4*/
SELECT universities.name, departments.name
FROM departments
JOIN universities ON universities.id = departments.university_id
ORDER BY universities.name ASC,
 departments.name ASC;

/*Display 5*/
SELECT program.id 
FROM programs 
JOIN universities
WHERE address LIKE "%USA%"

/*Dispaly 6*/
SELECT departments.name, departments.id, COUNT(programs.id) AS programs_department
From  departments
JOIN programs ON program.name = departments.program_id
GROUP BY departments.name, departments.id


/*Display 7*/ 
SELECT universities.id 
FROM universities 
JOIN universities ON universities.id= departments.university_id 
where "department"=5

/*Display 8*/
SELECT programs.id 
FROM programs
LEFT JOIN programs ON students.id = programs.student_id 
WHERE "students"= NULL
/*Display 9*/


/*Display 10*/
SELECT departments.id , departments.name, COUNT(programs.id) AS program_count
FROM departments 
LEFT JOIN programs ON departments.id = programs.department_id
GROUP BY departments.id, departments.name
ORDER BY program_count DESC
LIMIT 1;

/*Display 11*/
SELECT *
FROM departments 
WHERE created_at >= '2024-01-01' AND created_at < '2024-02-01';

/*Display 12*/
SELECT *
FROM departments 


/*Display 13*/
SELECT 
FROM universities


