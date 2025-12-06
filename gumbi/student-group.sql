CREATE Table student_group(
    id INT student_group_id PRIMARY KEY,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES student(id),
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES group(id)
);