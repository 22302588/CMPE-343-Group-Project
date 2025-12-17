INSERT INTO transcripts(id,course_id, gpa, cgpa, result_date)
VALUES
(1, 1, 3.03, 2.99, '2022-11-30'),
(2, 2,  2.77, 2.87, '2023-09-12'),
(3, 3, 3.80, 3.76, '2024-09-21'),
(4, 4, 2.85, 3.06, '2024-06-18'),
(5, 5, 2.21, 1.99, '2021-07-04');

INSERT INTO course_results(id, course_id, transcript_id, grade)
VALUES
(001, 1, 101, 40.00 ),
(002, 2, 102, 67.00),
(003, 3, 103, 38.99),
(004, 4, 104, 95.0), 
(005, 5, 105, 87.5);


INSERT INTO tests(id, type, percentage, student_id)
VALUES
(011, 'Mid-term', 97.0,1), 
(011, 'Final', 87.0,1),     
(022, 'Quiz', 78.5,2),    
(033, 'Mid-term', 88.0,3),  
(033, 'Final', 92.0,4),
(044, 'Final', 91.0,4), 
(005, 'Mid-term', 70.5,5);

INSERT INTO test_results(id, course_result_id, test_result_id, grade)
VALUES
(1, 110, 011, 40.00 ),
(2, 111, 022, 67.00 ),
(3, 112, 033, 38.99),
(4, 113, 022, 88.0), 
(5, 114, 033, 92.0); 