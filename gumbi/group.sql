CREATE Table group(
    id INT group_id PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
     Number int,
     instructor_id INT,
     FOREIGN KEY (instructor_id) REFERENCES instructor(id)
     course_id INT,
     FOREIGN KEY (course_id) REFERENCES course(id)
);

