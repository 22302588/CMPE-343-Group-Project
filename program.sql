Create Table program( 
 program_id int Primary key,
 department_id int REFERENCES Department(department_id) ON DELETE CASCADE NOT NULL,
 Program_code varchar(20) not null, 
 name varchar(50) not null,
 degree varchar (50) not null,
 duration_year int );


Insert into program (department_id, program_id, program_code, name, degree,  duration_year) 
Values 
(1, 1,  ‘CMPE121’, Programming , Computer Science , 4),
(2, 2,  ‘AIEN201’, Artificial Intelligence programming, Artificial Intelligence Engineering , 4),
(3, 3,  ‘ANTM111’, Anatomy, Dentistry undergraduate , 5),
(4,4,  ‘BIOE308’, Bioprocess Engineering, Bioengineering , 2); 


Create Table TestResult(
 test_result_id int Primary key,
 grade int not null, 
 course_result_id int not null,
 test_id int REFERENCES Test(test_id) ON DELETE CASCADE NOT NULL 
);

Insert into TestResult (test_result_id, grade, course_result_id, test_id) 
Values
(1, 88  , 1 , 1),
(2, 60  , 2, 2),
(3, 45  , 3, 3);