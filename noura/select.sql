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
SELECT program.name , department.name
From  programs
JOIN programs ON program.name = departments.program_id
GROUP BY programs_department


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
SELECT 
FROM departrments

