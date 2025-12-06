
CREATE TABLE IF NOT EXISTS Lesson(
lesson_id  int PRIMARY KEY,
 module_id  int REFERENCES Module(module_id) ON DELETE CASCADE,
 title   varchar(30),
 lesson_order   int,
 format   varchar(50)
);

INSERT INTO Lesson(lesson_id, module_id, title, lesson_order, format)
VALUES
(211, 121, 'Introduction to Development', 1, 'Texts'),
(212, 122, 'Data Analytics', 2, 'Videos'),
(213, 123, 'Operating systems', 3, 'Slides');

SELECT * FROM Lesson;