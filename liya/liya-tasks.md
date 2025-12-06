# LIYA

### Tables

- Transcript
- CourseResult
- Test
- TestResult

### Tasks

#### Create Tables

- [ ] Create **Transcript**
- [ ] Create **CourseResult**
- [ ] Create **Test**
- [ ] Create **TestResult**

#### Add Constraints

- [ ] Primary keys on each table
- [ ] Foreign keys:

  - Transcript → Student
  - CourseResult → Transcript + Course
  - Test → Course
  - TestResult → Test + Student

- [ ] UNIQUE constraints:

  - A student shouldn't have duplicate transcript entries
  - A student shouldn't have two CourseResult for the same course

- [ ] CHECK constraints

  - Grade between 0 and 100
  - Test score between 0 and 100

- [ ] NOT NULL constraints for score, grade, dates, etc.

#### Insert Data

- [ ] Insert placeholder transcripts
- [ ] Insert placeholder course results
- [ ] Insert placeholder tests
- [ ] Insert placeholder test results

#### Display Data

- [ ] SELECT on all four tables
