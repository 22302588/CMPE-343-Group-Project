CREATE Table students(
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    phone VARCHAR(15),
    status VARCHAR(20),
    program_id INT,
    FOREIGN KEY (program_id) REFERENCES program(id)
);