
Create Table university( 
 university_id int Primary KEY, 
 website_url varchar(50) not null, 
 short_name varchar(10) not null , 
 name varchar(50) not null,
 address varchar(50),
 email varchar(30)
);


Insert into university (university_id, website_url, short_name, name, address, email) 
Values 
(1 , 'ciu.edu.tr' , 'ciu', 'Cyprus International University', 'Haspolat KKTC' ,'ciu@edu.tr');

SELECT * from university;

