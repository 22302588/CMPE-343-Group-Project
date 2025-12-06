CREATE TABLE Instructor (
instructor_id  SERIAL PRIMARY KEY NOT NULL,
name   varchar(25) NOT NULL,
phone   varchar(25),
honorifics     varchar(50),
email   varchar(30),
department_id  int
);

INSERT INTO Instructor (instructor_id, phone, honorifics, email, name, department_id)
VALUES 
(),
(),
();