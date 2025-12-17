INSERT INTO universities (id, website_url, short_name, name, address, email)
VALUES
(1, 'https://web.mit.edu', 'MIT',
 'Massachusetts Institute of Technology',
 '77 Massachusetts Ave, Cambridge, MA 02139, USA',
 'admissions@mit.edu'),
(2, 'https://www.stanford.edu', 'Stanford',
 'Stanford University',
 '450 Serra Mall, Stanford, CA 94305, USA',
 'admission@stanford.edu'),
(3, 'https://www.ox.ac.uk', 'Oxford',
 'University of Oxford',
 'Wellington Square, Oxford OX1 2JD, United Kingdom',
 'info@ox.ac.uk'),
(4, 'https://www.harvard.edu', 'Harvard',
 'Harvard University',
 'Massachusetts Hall, Cambridge, MA 02138, USA',
 'admissions@harvard.edu'),
(5, 'https://www.cam.ac.uk', 'Cambridge',
 'University of Cambridge',
 'The Old Schools, Trinity Ln, Cambridge CB2 1TN, United Kingdom',
 'communications@admin.cam.ac.uk');


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

UPDATE departments SET name = 'Business' WHERE id = 3;


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

UPDATE programs SET name = 'Introduction to software engineering' WHERE id = 1;
UPDATE programs SET is_actcive = FALSE WHERE id IN (10, 14, 17);