CREATE Table instructor(
    id INT instructor_id PRIMARY KEY,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
    honorifics VARCHAR(20),
    phone VARCHAR(15)
);