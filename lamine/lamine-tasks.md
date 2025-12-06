# LAMINE

### Tables

- Course
- Module
- Lesson
- Prerequisite

### Tasks

#### Create Tables

- [x] Create **Course**
- [x] Create **Module**
- [x] Create **Lesson**
- [x] Create **Prerequisite**

#### Add Constraints

- [x] Primary keys for all tables
- [x] Foreign keys:

  - Module → Course
  - Lesson → Module
  - Prerequisite → Course (courseId + prerequisiteCourseId)

- [x] UNIQUE constraints

  - No duplicate prerequisite pair
  - No duplicate lesson titles within the same module
  - No duplicate module names within the same course

- [x] CHECK constraints

  - Lesson order > 0

- [x] NOT NULL constraints for titles, order, etc.

#### Insert Data

- [x] Insert placeholder courses
- [x] Insert placeholder modules linked to courses
- [x] Insert placeholder lessons linked to modules
- [x] Insert placeholder prerequisites

#### Display Data

- [ ] SELECT on all four tables
