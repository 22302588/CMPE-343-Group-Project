/* Update 1*/
UPDATE departments
SET name = 'Business'
WHERE id = 3;

/* Update 2*/
UPDATE universities

/* Update 3*/
ALTER TABLE programs
ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

SELECT * FROM programs
WHERE id IN (10, 14, 17);
UPDATE programs
SET is_active = FALSE
WHERE id IN (10, 14, 17);



/* Update 4*/
UPDATE programs
SET name = 'IAM THE GOAT'
WHERE id = 1;
SELECT * FROM programs
WHERE id=1;
UPDATE programs
SET name = 'Introduction to software engineering'
WHERE id = 1;
SELECT * FROM programs
WHERE id=1;
/* Update 5*/