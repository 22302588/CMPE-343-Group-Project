SELECT * FROM transcripts;
SELECT * FROM course_results;


ALTER TABLE tests
RENAME COLUMN percentage to score;
SELECT * FROM tests;

SELECT type, MAX(score) AS Max_score
FROM tests
GROUP BY type;



ALTER TABLE test_results
RENAME COLUMN grade to t_result;
SELECT * FROM test_results;