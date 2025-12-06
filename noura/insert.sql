INSERT INTO universities (id, website_url, short_name, name, address, email)
VALUES
(1, 'uni1.edu', 'UNI1', 'University One', 'City A', 'info@uni1.edu'),
(2, 'uni2.edu', 'UNI2', 'University Two', 'City B', 'info@uni2.edu'),
(3, 'uni3.edu', 'UNI3', 'University Three', 'City C', 'info@uni3.edu'),
(4, 'uni4.edu', 'UNI4', 'University Four', 'City D', 'info@uni4.edu'),
(5, 'uni5.edu', 'UNI5', 'University Five', 'City E', 'info@uni5.edu');

INSERT INTO departments (id, name, university_id, building, phone, department_code)
VALUES
(1, 'Computer Engineering', 1, 'B1', '+1111111', 'CMPE'),
(2, 'Electrical Engineering', 1, 'B2', '+1111112', 'EE'),
(3, 'Business Administration', 2, 'C1', '+2222221', 'BUS'),
(4, 'Marketing', 2, 'C2', '+2222222', 'MARK'),
(5, 'Architecture', 3, 'D1', '+3333331', 'ARCH'),
(6, 'Law', 3, 'D2', '+3333332', 'LAW'),
(7, 'Medicine', 4, 'E1', '+4444441', 'MED'),
(8, 'Pharmacy', 4, 'E2', '+4444442', 'PHAR'),
(9, 'Physics', 5, 'F1', '+5555551', 'PHYS'),
(10, 'Chemistry', 5, 'F2', '+5555552', 'CHEM');

INSERT INTO programs (id, department_id, program_code, name, degree, duration_year)
VALUES
(1, 1, 'CMPE101', 'Software Engineering', 'Bachelor', 4),
(2, 1, 'CMPE102', 'Artificial Intelligence', 'Bachelor', 4),
(3, 2, 'EE201', 'Power Systems', 'Bachelor', 4),
(4, 2, 'EE202', 'Electronics Engineering', 'Bachelor', 4),
(5, 3, 'BUS301', 'Management', 'Bachelor', 4),
(6, 3, 'BUS302', 'Accounting', 'Bachelor', 4),
(7, 4, 'MARK401', 'Digital Marketing', 'Bachelor', 4),
(8, 4, 'MARK402', 'Brand Management', 'Bachelor', 4),
(9, 5, 'ARCH501', 'Interior Architecture', 'Bachelor', 4),
(10, 5, 'ARCH502', 'Urban Design', 'Bachelor', 4),
(11, 6, 'LAW601', 'Criminal Law', 'Bachelor', 4),
(12, 6, 'LAW602', 'Civil Law', 'Bachelor', 4),
(13, 7, 'MED701', 'General Medicine', 'Bachelor', 6),
(14, 7, 'MED702', 'Surgery', 'Master', 2),
(15, 8, 'PHAR801', 'Clinical Pharmacy', 'Bachelor', 5),
(16, 9, 'PHYS901', 'Quantum Physics', 'Master', 2),
(17, 10, 'CHEM1001', 'Organic Chemistry', 'Bachelor', 4);

