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
SELECT programs.id, programs.name
FROM programs
JOIN departments
  ON programs.department_id = departments.id
JOIN universities
  ON departments.university_id = universities.id
WHERE universities.address LIKE '%United%';


/*Dispaly 6*/
SELECT departments.name, departments.id, COUNT(programs.id) AS programs_department
From  departments
JOIN programs ON programs.department_id = departments.id
GROUP BY departments.name, departments.id


/*Display 7*/ 
SELECT universities.id 
FROM universities 
JOIN departments ON universities.id= departments.university_id 
GROUP BY universities.id
HAVING count(departments.id)=2

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

/*List programs created in the last 90 days ( we join uni with departments) */
SELECT programs.id ,programs.name, universities.name , programs.created_at
FROM programs
JOIN departments ON programs.department_id = departments.id
JOIN universities ON departments.university_id = universities.id
WHERE programs.created_at >= NOW() - INTERVAL '90 days';



/*Display 12*/
SELECT *
FROM departments 


/*Display 13*/
SELECT 
FROM universities


