# LIYA

### Tables

- Transcript
- CourseResult
- Test
- TestResult

### Tasks

#### Create Tables

- [X] Create **Transcript**
- [X] Create **CourseResult**
- [X] Create **Test**
- [X] Create **TestResult**

#### Add Constraints

- [X] Primary keys on each table
- [X] Foreign keys:

  - Transcript → Student
  - CourseResult → Transcript + Course
  - Test → Course
  - TestResult → Test + Student

- [X] UNIQUE constraints:

  - A student shouldn't have duplicate transcript entries
  - A student shouldn't have two CourseResult for the same course

- [X] CHECK constraints

  - Grade between 0 and 100
  - Test score between 0 and 100

- [X] NOT NULL constraints for score, grade, dates, etc.

#### Insert Data

- [X] Insert placeholder transcripts
- [X] Insert placeholder course results
- [X] Insert placeholder tests
- [X] Insert placeholder test results

#### Display Data

- [X] SELECT on all four tables

- [X] Find the highest scoring student for each test (window function or MAX + GROUP BY).
- [ ] Show all transcripts issued in the last year with GPA > 3.0 (subquery or join).
- [ ] For each course, list how many students passed (grade >= threshold).
- [ ] Return all students who failed at least one test (EXISTS).
- [ ] For each student, show the course where they scored the lowest (window function + ORDER BY).
- [ ] Find tests that have no TestResults yet (LEFT JOIN).
- [ ] Compute the total credits earned per student (JOIN transcript + program rules).

- [ ] Calculate each student’s average grade across all courses (AVG + GROUP BY).
- [ ] List top 3 scorers per test (window function or subquery).
- [ ] Count how many students passed each course (CASE WHEN + SUM).
- [ ] Show transcripts sorted by GPA descending.
- [ ] Get all students who failed at least one test (EXISTS).
- [ ] Find tests with no results (LEFT JOIN).
- [ ] For each course, compute SUM, MIN, MAX, AVG of all results.
- [ ] GROUP BY course_level to compute average success rate.