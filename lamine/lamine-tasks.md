# LAMINE

### Tables

- Course
- Module
- Lesson
- Prerequisite

### Tasks

#### Create Tables

- [ ] Create **Course**
- [ ] Create **Module**
- [ ] Create **Lesson**
- [ ] Create **Prerequisite**

#### Add Constraints

- [ ] Primary keys for all tables
- [ ] Foreign keys:

  - Module → Course
  - Lesson → Module
  - Prerequisite → Course (courseId + prerequisiteCourseId)

- [ ] UNIQUE constraints

  - No duplicate prerequisite pair
  - No duplicate lesson titles within the same module
  - No duplicate module names within the same course

- [ ] CHECK constraints

  - Lesson order > 0

- [ ] NOT NULL constraints for titles, order, etc.

#### Insert Data

- [ ] Insert placeholder courses
- [ ] Insert placeholder modules linked to courses
- [ ] Insert placeholder lessons linked to modules
- [ ] Insert placeholder prerequisites

#### Display Data

- [ ] SELECT on all four tables
