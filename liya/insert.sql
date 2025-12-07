INSERT INTO transcripts(id, student_id, gpa, cgpa)
VALUES
(01, 11, 3.03, 2.99),
(02, 12, 2.77, 2.87),
(03, 13, 3.77, 3.66);

INSERT INTO course_results(id, course_id, transcript_id, grade)
VALUES
(001, 1, 01, 40.00 ),
(002, 2, 02, 67.00),
(003, 3, 03, 38.99);
INSERT INTO tests(id, type, percentage)
VALUES
(011,  "Mid-term", 97.01),
(022, "Final", 57.7),
(033, "Quiz", 69.9);
INSERT INTO test_results(id, course_result_id, test_result_id, grade)
VALUES
(1, 110, 011, 40.00 ),
(2, 111, 022, 67.00 ),
(3, 112, 033, 38.99);