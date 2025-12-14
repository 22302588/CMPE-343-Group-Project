SELECT * FROM transcripts;
SELECT * FROM course_results;



ALTER TABLE tests
RENAME COLUMN percentage to score;
SELECT * FROM tests;

SELECT MAX(score) AS Max_score
FROM tests;



ALTER TABLE test_results
rename column grade to t_result;
SELECT * FROM test_results;