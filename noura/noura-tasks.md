# NOURA

### Tables

- University
- Department
- Program

### Tasks

#### Create Tables

- [X] Create **University**
- [X] Create **Department**
- [X] Create **Program**

#### Add Constraints

- [X] Primary keys on each table
- [X] Foreign key:

  - Department → University
  - Program → Department

- [X] UNIQUE constraints

  - University name
  - Department name within same university
  - Program name within same department

- [X] NOT NULL constraints for identifiers and names

#### Insert Data

- [X] Insert placeholder universities
- [X] Insert placeholder departments (linked to university)
- [X] Insert placeholder programs (linked to department)

#### Display Data

- [X] SELECT FROM University
- [X] SELECT FROM Department
- [X] SELECT FROM Program
- [] List all departments with their university name, ordered alphabetically by university then department.
- [] Find all programs that belong to universities located in a specific country (use a WHERE + JOIN).
- [] Show the number of programs per department (GROUP BY).
- [] List universities that have more than 5 departments (HAVING clause).
- [] Find all programs that have no students enrolled (LEFT JOIN to Student).
- [] Display a nested result: each university → departments → count of programs under each.
- [] Show the department that has the highest number of programs (LIMIT 1).
- [] Select all departments created in the last 30 days (DATE comparison).
- [] List all programs with their department + university (3-table JOIN).
- [] Count how many programs each university has (GROUP BY + COUNT).
- [] Order departments by number of programs descending (ORDER BY + aggregate).
- [] Get the university with the most departments (LIMIT 1).
- [] List programs created in the last 90 days (DATE filtering).
- [] Show all departments with their full hierarchical name: CONCAT(university.name, ' > ', department.name).
- [] Retrieve universities that have no programs at all (LEFT JOIN + IS NULL).
- [] Count departments per country (GROUP BY + HAVING).

### Update Data
- [] Update the name of a department.
- [] Change the university of a specific department (FK update).
- [] Mark all programs of a university as archived using a boolean column.
- [] Update multiple programs to new names using IN().
