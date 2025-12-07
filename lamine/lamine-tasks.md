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

- [] SELECT on all four tables

- [x] List each course with its total modules and total lessons (multiple JOINs + GROUP BY).
- [x] Retrieve all lessons in order for a given course (JOIN + ORDER BY).
- [x] Find all courses that have no prerequisites (LEFT JOIN + IS NULL).
- [] List courses that depend on another specific course (self-JOIN on prerequisites).
- [] Show prerequisite chains: course → required course (self reference).
- [] Find modules that contain more than 5 lessons (HAVING).
- [] Display courses with the number of prerequisite levels (recursive CTE).
- [] Get the longest course based on total lesson count (ORDER BY DESC LIMIT 1).

- [] List every course with number of modules and number of lessons (JOIN + COUNT).
- [] Retrieve lessons for a course ordered by lesson order (ORDER BY).
- [] Find courses that have no prerequisites (LEFT JOIN + IS NULL).
- [] Show prerequisite chains (self join on prerequisite).
- [] Count lessons per module and filter modules with more than 5 lessons (HAVING).
- [] Show full path of lesson: Course → Module → Lesson using CONCAT.
- [] Find the longest course by total lesson count (ORDER BY DESC LIMIT 1).
- [] GROUP BY course difficulty or category (if included).

- [] Change a module’s name.
- [] Reorder lessons (update lesson number).
- [] Update the prerequisite of a course.
- [] Bulk update all lessons of a module to a new difficulty level.
