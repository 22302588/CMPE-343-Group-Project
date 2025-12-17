INSERT INTO courses 
    (id, department_id, course_code, title, credits, overview, course_level)
VALUES
    (1, 1, 'CS101', 'Intro to Programming', 3, 'Basics of coding and logic.', 100),
    (2, 1, 'CS201', 'Data Structures', 3, 'Study of common data structures.', 200),
    (3, 1, 'CS301', 'Operating Systems', 3, 'Processes, threads, scheduling.', 300),
    (4, 1, 'MTH101', 'Calculus I', 4, 'Limits, derivatives, integrals.', 100),
    (5, 1, 'MTH201', 'Linear Algebra', 3, 'Matrices, vectors, transformations.', 200),
    (6, 2, 'PHY101', 'Classical Mechanics', 4, 'Motion, forces, energy.', 100),
    (7, 5, 'BUS101', 'Intro to Management', 3, 'Basics of management and business.', 100),
    (8, 1, 'CS102', 'Programming II', 3, 'Advanced programming concepts.', 100),
    (9, 1, 'CS202', 'Algorithms', 3, 'Algorithm design and analysis.', 200),
    (10, 1, 'CS203', 'Databases', 3, 'Relational databases and SQL.', 200),
    (11, 1, 'CS302', 'Computer Networks', 3, 'Networking fundamentals.', 300),
    (12, 1, 'CS303', 'Software Engineering', 3, 'Software development lifecycle.', 300),
    (13, 1, 'CS401', 'Artificial Intelligence', 3, 'Search, reasoning, learning.', 400),
    (14, 1, 'CS402', 'Machine Learning', 3, 'Supervised and unsupervised learning.', 400),

    -- Mathematics
    (15, 1, 'MTH102', 'Calculus II', 4, 'Advanced integration techniques.', 100),
    (16, 1, 'MTH202', 'Discrete Mathematics', 3, 'Logic, sets, graphs.', 200),
    (17, 1, 'MTH203', 'Probability', 3, 'Probability theory and models.', 200),
    (18, 1, 'MTH301', 'Numerical Methods', 3, 'Approximation techniques.', 300),
    (19, 1, 'MTH302', 'Statistics', 3, 'Statistical inference.', 300),

    -- Physics
    (20, 2, 'PHY102', 'Electricity and Magnetism', 4, 'Fields and circuits.', 100),
    (21, 2, 'PHY201', 'Waves and Optics', 3, 'Wave motion and optics.', 200),
    (22, 2, 'PHY202', 'Thermodynamics', 3, 'Heat and energy.', 200),
    (23, 2, 'PHY301', 'Quantum Mechanics', 4, 'Quantum theory basics.', 300),
    (24, 2, 'PHY302', 'Solid State Physics', 3, 'Properties of solids.', 300),

    -- Business
    (25, 5, 'BUS102', 'Accounting I', 3, 'Financial accounting basics.', 100),
    (26, 5, 'BUS201', 'Marketing', 3, 'Marketing principles.', 200),
    (27, 5, 'BUS202', 'Finance', 3, 'Corporate finance fundamentals.', 200),
    (28, 5, 'BUS301', 'Human Resources', 3, 'Managing people.', 300),
    (29, 5, 'BUS302', 'Business Strategy', 3, 'Strategic decision making.', 300),

    -- Engineering
    (30, 3, 'ENG101', 'Engineering Basics', 3, 'Introduction to engineering.', 100),
    (31, 3, 'ENG201', 'Circuits I', 4, 'Electrical circuits.', 200),
    (32, 3, 'ENG202', 'Digital Logic', 3, 'Logic gates and design.', 200),
    (33, 3, 'ENG301', 'Control Systems', 3, 'Feedback and control.', 300),
    (34, 3, 'ENG302', 'Embedded Systems', 3, 'Microcontrollers.', 300),

    -- Humanities
    (35, 4, 'HUM101', 'Critical Thinking', 3, 'Logic and reasoning.', 100),
    (36, 4, 'HUM102', 'Academic Writing', 3, 'Writing skills.', 100),
    (37, 4, 'HUM201', 'Philosophy', 3, 'Major philosophical ideas.', 200),
    (38, 4, 'HUM202', 'Ethics', 3, 'Moral philosophy.', 200),
    (39, 4, 'HUM301', 'Modern History', 3, '20th century history.', 300),

    -- IT / Information Systems
    (40, 6, 'IT101', 'Intro to IT', 3, 'Information technology basics.', 100),
    (41, 6, 'IT102', 'Computer Hardware', 3, 'PC components.', 100),
    (42, 6, 'IT201', 'System Administration', 3, 'Managing systems.', 200),
    (43, 6, 'IT202', 'Cybersecurity Basics', 3, 'Security fundamentals.', 200),
    (44, 6, 'IT301', 'Cloud Computing', 3, 'Cloud platforms.', 300),

    -- Economics
    (45, 7, 'ECO101', 'Microeconomics', 3, 'Consumer behavior.', 100),
    (46, 7, 'ECO102', 'Macroeconomics', 3, 'Economic systems.', 100),
    (47, 7, 'ECO201', 'Econometrics', 3, 'Statistical economics.', 200),
    (48, 7, 'ECO301', 'International Economics', 3, 'Global trade.', 300),

    -- More CS to reach 80
    (49, 1, 'CS210', 'Web Development', 3, 'Frontend and backend.', 200),
    (50, 1, 'CS211', 'Mobile Development', 3, 'Mobile applications.', 200),
    (51, 1, 'CS310', 'Distributed Systems', 3, 'Distributed computing.', 300),
    (52, 1, 'CS311', 'Compiler Design', 3, 'Language processing.', 300),
    (53, 1, 'CS410', 'Computer Vision', 3, 'Image processing.', 400),
    (54, 1, 'CS411', 'Natural Language Processing', 3, 'Text processing.', 400),

    -- Fillers (general electives)
    (55, 8, 'GEN101', 'Public Speaking', 2, 'Speaking skills.', 100),
    (56, 8, 'GEN102', 'Teamwork', 2, 'Collaboration skills.', 100),
    (57, 8, 'GEN201', 'Project Management', 3, 'Project planning.', 200),
    (58, 8, 'GEN202', 'Leadership', 3, 'Leadership principles.', 200),
    (59, 8, 'GEN301', 'Entrepreneurship', 3, 'Startup fundamentals.', 300),

    (60, 9, 'ART101', 'Art History', 3, 'Art movements.', 100),
    (61, 9, 'ART201', 'Digital Design', 3, 'Design principles.', 200),
    (62, 9, 'ART301', 'UX/UI Design', 3, 'User experience.', 300),

    (63, 10, 'SCI101', 'Scientific Method', 3, 'Research fundamentals.', 100),
    (64, 10, 'SCI201', 'Research Methods', 3, 'Experimental design.', 200),
    (65, 10, 'SCI301', 'Data Analysis', 3, 'Analyzing data.', 300),

    (66, 5, 'BUS401', 'Corporate Governance', 3, 'Company oversight.', 400),
    (67, 7, 'ECO401', 'Development Economics', 3, 'Economic development.', 400),

    (68, 6, 'IT401', 'Advanced Cybersecurity', 3, 'Advanced security.', 400),
    (69, 6, 'IT402', 'DevOps', 3, 'CI/CD pipelines.', 400),

    (70, 3, 'ENG401', 'Robotics', 4, 'Robotic systems.', 400),
    (71, 3, 'ENG402', 'AI for Engineers', 3, 'AI applications.', 400),

    (72, 4, 'HUM401', 'Philosophy of Technology', 3, 'Tech and society.', 400),
    (73, 4, 'HUM402', 'Cultural Studies', 3, 'Cultural analysis.', 400),

    (74, 2, 'PHY401', 'Nuclear Physics', 4, 'Nuclear theory.', 400),
    (75, 2, 'PHY402', 'Astrophysics', 4, 'Stars and galaxies.', 400),

    (76, 1, 'CS420', 'Ethical Hacking', 3, 'Penetration testing.', 400),
    (77, 1, 'CS421', 'Game Development', 3, 'Game engines.', 400),
    (78, 1, 'CS422', 'Blockchain', 3, 'Distributed ledgers.', 400),
    (79, 1, 'CS423', 'Big Data', 3, 'Large-scale data.', 400),
    (80, 1, 'CS424', 'Capstone Project', 4, 'Final year project.', 400);


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
