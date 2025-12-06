CREATE TABLE Module(
  module_id  int PRIMARY KEY,
  is_visible  bool,
  module_order int,
  name varchar(30) NOT NULL,
  courseId  int REFERENCES Course(courseId)
  );
  insert into Module(module_id, is_visible, module_order, name, courseID)
  VALUES
  (121,'true', 1, 'Chapter 1', 1 ),
  (122, 'true', 2, 'Chapter 2', 2),
  (123, 'false', 3, 'Chapter 3', 3);
  select * FROM Module; 
  
  
  