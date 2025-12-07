INSERT INTO 
    courses (id, department_id, course_code, title, credits, overview, course_level)
VALUES
    (1, 1, 'CS101', 'Intro to Programming', 3, 'Basics of coding and logic.', 100),
    (2, 1, 'CS201', 'Data Structures', 3, 'Study of common data structures.', 200),
    (3, 1, 'CS301', 'Operating Systems', 3, 'Processes, threads, scheduling.', 300),
    (4, 1, 'MTH101', 'Calculus I', 4, 'Limits, derivatives, integrals.', 100),
    (5, 1, 'MTH201', 'Linear Algebra', 3, 'Matrices, vectors, transformations.', 200),
    (6, 2, 'PHY101', 'Classical Mechanics', 4, 'Motion, forces, energy.', 100),
    (7, 5, 'BUS101', 'Intro to Management', 3, 'Basics of management and business.', 100);


INSERT INTO 
    modules (course_id, title, is_visible, module_order)
VALUES
    (1, 'Getting Started', TRUE, 1),
    (1, 'Control Flow', TRUE, 2),
    (1, 'Functions', TRUE, 3),
    (2, 'Arrays & Lists', TRUE, 1),
    (2, 'Trees', TRUE, 2),
    (2, 'Graphs', TRUE, 3),
    (3, 'Processes', TRUE, 1),
    (3, 'Threads', TRUE, 2),
    (3, 'Scheduling', TRUE, 3),
    (4, 'Limits', TRUE, 1),
    (4, 'Derivatives', TRUE, 2),
    (4, 'Integrals', TRUE, 3);


INSERT INTO 
    lessons (module_id, title, lesson_order, format)
VALUES
    (1, 'What is Programming?', 1, 'TEXT'),
    (1, 'Your First Program', 2, 'VIDEO'),
    (2, 'If Statements', 1, 'TEXT'),
    (2, 'Loops', 2, 'VIDEO'),
    (3, 'Function Basics', 1, 'TEXT'),
    (3, 'Parameters & Return Values', 2, 'VIDEO'),
    (4, 'Introduction to Arrays', 1, 'TEXT'),
    (4, 'Working with Lists', 2, 'PDF'),
    (5, 'Binary Trees', 1, 'SLIDE'),
    (5, 'Tree Traversals', 2, 'VIDEO'),
    (6, 'Graph Representation', 1, 'TEXT'),
    (6, 'Graph Search Algorithms', 2, 'VIDEO');

INSERT INTO prerequisites (course_id, dependon_id)
VALUES (2, 1), (3, 2), (5, 4), (3, 1);
