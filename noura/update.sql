/* Update 1*/
UPDATE departments
SET name = 'Business'
WHERE id = 3;

/* Update 2*/
UPDATE universities

/* Update 3*/
ALTER TABLE programs
ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

UPDATE programs
SET is_active = FALSE
WHERE id IN (10, 14, 17);

/* Update 4*/
UPDATE programsS
SET name = 'Introduction to software engineering'
WHERE id = 1;
/* Update 5*/