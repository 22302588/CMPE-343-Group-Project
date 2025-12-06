CREATE TABLE Test
(
test_id  int PRIMARY KEY,
type   varchar(25),
percentage  float
);

INSERT INTO Test (test_id, type, percentage)
VALUES
(101, 'Midterm', 56.99),
(102, 'Midterm', 77.13),
(103, 'Final', 99.3);

SELECT * FROM Test