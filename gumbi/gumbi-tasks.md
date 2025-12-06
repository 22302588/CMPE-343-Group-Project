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
