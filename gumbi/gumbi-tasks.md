## GUMBI

### Tables

- Student
- StudentGroup
- Instructor
- Group

### Tasks

#### Create Tables

- [ ] Create **Student**
- [ ] Create **StudentGroup**
- [ ] Create **Instructor**
- [ ] Create **Group**

#### Add Constraints

- [ ] Primary keys on all tables
- [ ] Foreign key:
  - Student → Program
  - StudentGroup → Student
  - Group → Department or Program (depending on your model)
  - Instructor → Department
- [ ] Add unique constraints where needed
  - (email) unique on Student
  - (email) unique on Instructor
- [ ] Add not-null constraints for essential fields (name, birthdate, etc.)

#### Insert Data

- [ ] Insert placeholder students
- [ ] Insert placeholder instructors
- [ ] Insert placeholder student groups
- [ ] Insert placeholder groups

#### Display Data

- [ ] SELECT \* for each table for quick validation

- [] List all students with their group name and program name (multi-JOIN).
- [] Find instructors who don’t teach any group (LEFT JOIN).
- [] Count how many students are in each group (GROUP BY).
- [] Show all groups supervised by instructors from a specific department.
- [] Find students who are not in any StudentGroup (anti-join).
- [] Display each instructor with the number of groups they manage (aggregation).
- [] List students grouped by age ranges: <20, 20–25, 25+ (CASE WHEN).
- [] Retrieve all students whose email domain is not university.edu (LIKE + NOT).

- [] List all students with their group, department, and program.
- [] Count how many students each group has (GROUP BY + COUNT).
- [] List instructors with the number of groups they manage (LEFT JOIN).
- [] Get students whose names contain at least two words (pattern matching).
- [] Determine the average age per group (AVG + GROUP BY).
- [] Display instructor full names using CONCAT.
- [] Order students by age descending.
- [] Get groups that have no students (LEFT JOIN).

- [] Update student emails using string operations (replace domain).
- [] Move a student to a new group.
- [] Update an instructor’s assigned department.
- [] Increment a “warnings” column for all students failing attendance.