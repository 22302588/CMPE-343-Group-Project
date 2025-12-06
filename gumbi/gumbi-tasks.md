## GUMBI

### Tables

- Student
- StudentGroup
- Instructor
- Group

### Tasks

#### Create Tables

- [X] Create **Student**
- [X] Create **StudentGroup**
- [X] Create **Instructor**
- [X] Create **Group**

#### Add Constraints

- [X] Primary keys on all tables
- [X] Foreign key:
  - Student → Program
  - StudentGroup → Student
  - Group → Department or Program (depending on your model)
  - Instructor → Department
- [ ] Add unique constraints where needed
  - (email) unique on Student
  - (email) unique on Instructor
- [X] Add not-null constraints for essential fields (name, birthdate, etc.)

#### Insert Data

- [ ] Insert placeholder students
- [ ] Insert placeholder instructors
- [ ] Insert placeholder student groups
- [ ] Insert placeholder groups

#### Display Data

- [ ] SELECT \* for each table for quick validation
