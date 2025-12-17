-- Insert test types first (referenced by test_results)
INSERT INTO tests(id, type, percentage) VALUES 
(1, 'MIDTERM', 40.0),
(2, 'FINAL', 50.0), 
(3, 'QUIZ', 10.0);

-- Insert transcripts (student academic records)
INSERT INTO transcripts(id, student_id, gpa, cgpa) VALUES
(1, 1, 3.85, 3.72),
(2, 2, 2.95, 3.12),
(3, 3, 3.67, 3.45),
(4, 4, 2.78, 2.89),
(5, 5, 3.92, 3.88),
(6, 6, 2.45, 2.67),
(7, 7, 3.56, 3.34),
(8, 8, 3.23, 3.18),
(9, 9, 2.89, 3.01),
(10, 10, 3.78, 3.65),
(11, 11, 2.67, 2.78),
(12, 12, 3.45, 3.29),
(13, 13, 3.12, 3.08),
(14, 14, 2.98, 3.15),
(15, 15, 3.67, 3.52),
(16, 16, 2.34, 2.45),
(17, 17, 3.89, 3.76),
(18, 18, 3.01, 3.12),
(19, 19, 2.87, 2.95),
(20, 20, 3.54, 3.41);

-- Insert course results (grades for specific courses in transcripts)
INSERT INTO course_results(id, transcript_id, course_id, grade) VALUES
-- Transcript 1 (Student 1) - Multiple courses
(1, 1, 1, 88.5),
(2, 1, 2, 92.0),
(3, 1, 3, 85.7),
(4, 1, 4, 90.3),
-- Transcript 2 (Student 2) - Multiple courses  
(5, 2, 1, 75.2),
(6, 2, 2, 68.9),
(7, 2, 5, 82.1),
(8, 2, 6, 79.4),
-- Transcript 3 (Student 3) - Multiple courses
(9, 3, 3, 91.8),
(10, 3, 4, 87.6),
(11, 3, 7, 89.2),
(12, 3, 8, 85.4),
-- Transcript 4 (Student 4) - Multiple courses
(13, 4, 1, 72.3),
(14, 4, 5, 68.7),
(15, 4, 9, 75.9),
-- Transcript 5 (Student 5) - Multiple courses
(16, 5, 2, 95.2),
(17, 5, 3, 93.8),
(18, 5, 4, 91.5),
(19, 5, 10, 94.1),
-- Transcript 6 (Student 6) - Multiple courses
(20, 6, 6, 65.4),
(21, 6, 7, 58.9),
(22, 6, 11, 71.2),
-- Transcript 7 (Student 7) - Multiple courses
(23, 7, 1, 84.7),
(24, 7, 8, 87.3),
(25, 7, 12, 82.9),
(26, 7, 13, 86.1),
-- Transcript 8 (Student 8) - Multiple courses
(27, 8, 2, 78.6),
(28, 8, 9, 81.4),
(29, 8, 14, 79.8),
-- Transcript 9 (Student 9) - Multiple courses
(30, 9, 5, 73.2),
(31, 9, 10, 76.8),
(32, 9, 15, 74.5),
-- Transcript 10 (Student 10) - Multiple courses
(33, 10, 3, 89.7),
(34, 10, 11, 92.1),
(35, 10, 16, 88.3),
(36, 10, 17, 90.6),
-- Transcript 11 (Student 11) - Multiple courses
(37, 11, 4, 69.8),
(38, 11, 12, 72.4),
(39, 11, 18, 68.9),
-- Transcript 12 (Student 12) - Multiple courses
(40, 12, 6, 83.5),
(41, 12, 13, 86.2),
(42, 12, 19, 81.7),
(43, 12, 20, 84.9),
-- Transcript 13 (Student 13) - Multiple courses
(44, 13, 7, 77.3),
(45, 13, 14, 79.6),
(46, 13, 21, 75.8),
-- Transcript 14 (Student 14) - Multiple courses
(47, 14, 8, 74.1),
(48, 14, 15, 78.4),
(49, 14, 22, 76.7),
(50, 14, 23, 73.9),
-- Transcript 15 (Student 15) - Multiple courses
(51, 15, 9, 87.9),
(52, 15, 16, 90.2),
(53, 15, 24, 89.5),
-- Transcript 16 (Student 16) - Multiple courses
(54, 16, 10, 62.7),
(55, 16, 17, 59.3),
(56, 16, 25, 65.8),
-- Transcript 17 (Student 17) - Multiple courses
(57, 17, 11, 93.4),
(58, 17, 18, 91.8),
(59, 17, 26, 94.7),
(60, 17, 27, 92.1),
-- Transcript 18 (Student 18) - Multiple courses
(61, 18, 12, 76.5),
(62, 18, 19, 79.2),
(63, 18, 28, 77.8),
-- Transcript 19 (Student 19) - Multiple courses
(64, 19, 13, 71.6),
(65, 19, 20, 74.3),
(66, 19, 29, 72.9),
-- Transcript 20 (Student 20) - Multiple courses
(67, 20, 14, 85.2),
(68, 20, 21, 88.7),
(69, 20, 30, 86.4),
(70, 20, 31, 87.9);

-- Insert test results (individual test scores for course results)
INSERT INTO test_results(id, course_result_id, test_id, grade) VALUES
-- Course Result 1 (Student 1, Course 1) - All test types
(1, 1, 1, 85.0),  -- Midterm
(2, 1, 2, 90.5),  -- Final  
(3, 1, 3, 92.0),  -- Quiz
-- Course Result 2 (Student 1, Course 2) - All test types
(4, 2, 1, 89.5),  -- Midterm
(5, 2, 2, 94.0),  -- Final
(6, 2, 3, 88.0),  -- Quiz
-- Course Result 3 (Student 1, Course 3) - All test types
(7, 3, 1, 82.7),  -- Midterm
(8, 3, 2, 87.5),  -- Final
(9, 3, 3, 90.0),  -- Quiz
-- Course Result 4 (Student 1, Course 4) - All test types
(10, 4, 1, 88.3),  -- Midterm
(11, 4, 2, 91.8),  -- Final
(12, 4, 3, 89.5),  -- Quiz
-- Course Result 5 (Student 2, Course 1) - All test types
(13, 5, 1, 72.5),  -- Midterm
(14, 5, 2, 77.0),  -- Final
(15, 5, 3, 78.5),  -- Quiz
-- Course Result 6 (Student 2, Course 2) - All test types
(16, 6, 1, 65.8),  -- Midterm
(17, 6, 2, 70.5),  -- Final
(18, 6, 3, 72.0),  -- Quiz
-- Course Result 7 (Student 2, Course 5) - All test types
(19, 7, 1, 79.2),  -- Midterm
(20, 7, 2, 84.0),  -- Final
(21, 7, 3, 83.5),  -- Quiz
-- Course Result 8 (Student 2, Course 6) - All test types
(22, 8, 1, 76.4),  -- Midterm
(23, 8, 2, 81.2),  -- Final
(24, 8, 3, 80.8),  -- Quiz
-- Course Result 9 (Student 3, Course 3) - All test types
(25, 9, 1, 89.8),  -- Midterm
(26, 9, 2, 93.2),  -- Final
(27, 9, 3, 92.5),  -- Quiz
-- Course Result 10 (Student 3, Course 4) - All test types
(28, 10, 1, 85.6),  -- Midterm
(29, 10, 2, 88.9),  -- Final
(30, 10, 3, 89.2),  -- Quiz
-- Course Result 11 (Student 3, Course 7) - All test types
(31, 11, 1, 87.2),  -- Midterm
(32, 11, 2, 90.8),  -- Final
(33, 11, 3, 90.0),  -- Quiz
-- Course Result 12 (Student 3, Course 8) - All test types
(34, 12, 1, 83.4),  -- Midterm
(35, 12, 2, 86.7),  -- Final
(36, 12, 3, 87.5),  -- Quiz
-- Course Result 13 (Student 4, Course 1) - All test types
(37, 13, 1, 70.3),  -- Midterm
(38, 13, 2, 73.8),  -- Final
(39, 13, 3, 74.0),  -- Quiz
-- Course Result 14 (Student 4, Course 5) - All test types
(40, 14, 1, 66.7),  -- Midterm
(41, 14, 2, 70.2),  -- Final
(42, 14, 3, 69.5),  -- Quiz
-- Course Result 15 (Student 4, Course 9) - All test types
(43, 15, 1, 73.9),  -- Midterm
(44, 15, 2, 77.4),  -- Final
(45, 15, 3, 76.8),  -- Quiz
-- Course Result 16 (Student 5, Course 2) - All test types
(46, 16, 1, 93.2),  -- Midterm
(47, 16, 2, 96.5),  -- Final
(48, 16, 3, 95.8),  -- Quiz
-- Course Result 17 (Student 5, Course 3) - All test types
(49, 17, 1, 91.8),  -- Midterm
(50, 17, 2, 95.2),  -- Final
(51, 17, 3, 94.5),  -- Quiz
-- Course Result 18 (Student 5, Course 4) - All test types
(52, 18, 1, 89.5),  -- Midterm
(53, 18, 2, 92.8),  -- Final
(54, 18, 3, 93.0),  -- Quiz
-- Course Result 19 (Student 5, Course 10) - All test types
(55, 19, 1, 92.1),  -- Midterm
(56, 19, 2, 95.8),  -- Final
(57, 19, 3, 94.2),  -- Quiz
-- Course Result 20 (Student 6, Course 6) - All test types
(58, 20, 1, 63.4),  -- Midterm
(59, 20, 2, 66.9),  -- Final
(60, 20, 3, 67.5),  -- Quiz
-- Course Result 21 (Student 6, Course 7) - All test types
(61, 21, 1, 56.9),  -- Midterm
(62, 21, 2, 60.2),  -- Final
(63, 21, 3, 61.0),  -- Quiz
-- Course Result 22 (Student 6, Course 11) - All test types
(64, 22, 1, 69.2),  -- Midterm
(65, 22, 2, 72.8),  -- Final
(66, 22, 3, 71.5),  -- Quiz
-- Course Result 23 (Student 7, Course 1) - All test types
(67, 23, 1, 82.7),  -- Midterm
(68, 23, 2, 86.2),  -- Final
(69, 23, 3, 85.0),  -- Quiz
-- Course Result 24 (Student 7, Course 8) - All test types
(70, 24, 1, 85.3),  -- Midterm
(71, 24, 2, 88.8),  -- Final
(72, 24, 3, 87.5),  -- Quiz
-- Course Result 25 (Student 7, Course 12) - All test types
(73, 25, 1, 80.9),  -- Midterm
(74, 25, 2, 84.4),  -- Final
(75, 25, 3, 83.2),  -- Quiz
-- Course Result 26 (Student 7, Course 13) - All test types
(76, 26, 1, 84.1),  -- Midterm
(77, 26, 2, 87.6),  -- Final
(78, 26, 3, 86.8),  -- Quiz
-- Course Result 27 (Student 8, Course 2) - All test types
(79, 27, 1, 76.6),  -- Midterm
(80, 27, 2, 80.1),  -- Final
(81, 27, 3, 79.2),  -- Quiz
-- Course Result 28 (Student 8, Course 9) - All test types
(82, 28, 1, 79.4),  -- Midterm
(83, 28, 2, 82.9),  -- Final
(84, 28, 3, 82.0),  -- Quiz
-- Course Result 29 (Student 8, Course 14) - All test types
(85, 29, 1, 77.8),  -- Midterm
(86, 29, 2, 81.3),  -- Final
(87, 29, 3, 80.5),  -- Quiz
-- Course Result 30 (Student 9, Course 5) - All test types
(88, 30, 1, 71.2),  -- Midterm
(89, 30, 2, 74.7),  -- Final
(90, 30, 3, 74.0),  -- Quiz
-- Course Result 31 (Student 9, Course 10) - All test types
(91, 31, 1, 74.8),  -- Midterm
(92, 31, 2, 78.3),  -- Final
(93, 31, 3, 77.5),  -- Quiz
-- Course Result 32 (Student 9, Course 15) - All test types
(94, 32, 1, 72.5),  -- Midterm
(95, 32, 2, 76.0),  -- Final
(96, 32, 3, 75.2),  -- Quiz
-- Course Result 33 (Student 10, Course 3) - All test types
(97, 33, 1, 87.7),  -- Midterm
(98, 33, 2, 91.2),  -- Final
(99, 33, 3, 90.5),  -- Quiz
-- Course Result 34 (Student 10, Course 11) - All test types
(100, 34, 1, 90.1),  -- Midterm
(101, 34, 2, 93.6),  -- Final
(102, 34, 3, 92.8),  -- Quiz
-- Course Result 35 (Student 10, Course 16) - All test types
(103, 35, 1, 86.3),  -- Midterm
(104, 35, 2, 89.8),  -- Final
(105, 35, 3, 89.0),  -- Quiz
-- Course Result 36 (Student 10, Course 17) - All test types
(106, 36, 1, 88.6),  -- Midterm
(107, 36, 2, 92.1),  -- Final
(108, 36, 3, 91.2),  -- Quiz
-- Course Result 37 (Student 11, Course 4) - All test types
(109, 37, 1, 67.8),  -- Midterm
(110, 37, 2, 71.3),  -- Final
(111, 37, 3, 70.5),  -- Quiz
-- Course Result 38 (Student 11, Course 12) - All test types
(112, 38, 1, 70.4),  -- Midterm
(113, 38, 2, 73.9),  -- Final
(114, 38, 3, 73.0),  -- Quiz
-- Course Result 39 (Student 11, Course 18) - All test types
(115, 39, 1, 66.9),  -- Midterm
(116, 39, 2, 70.4),  -- Final
(117, 39, 3, 69.8),  -- Quiz
-- Course Result 40 (Student 12, Course 6) - All test types
(118, 40, 1, 81.5),  -- Midterm
(119, 40, 2, 85.0),  -- Final
(120, 40, 3, 84.2),  -- Quiz
-- Course Result 41 (Student 12, Course 13) - All test types
(121, 41, 1, 84.2),  -- Midterm
(122, 41, 2, 87.7),  -- Final
(123, 41, 3, 87.0),  -- Quiz
-- Course Result 42 (Student 12, Course 19) - All test types
(124, 42, 1, 79.7),  -- Midterm
(125, 42, 2, 83.2),  -- Final
(126, 42, 3, 82.5),  -- Quiz
-- Course Result 43 (Student 12, Course 20) - All test types
(127, 43, 1, 82.9),  -- Midterm
(128, 43, 2, 86.4),  -- Final
(129, 43, 3, 85.8),  -- Quiz
-- Course Result 44 (Student 13, Course 7) - All test types
(130, 44, 1, 75.3),  -- Midterm
(131, 44, 2, 78.8),  -- Final
(132, 44, 3, 78.0),  -- Quiz
-- Course Result 45 (Student 13, Course 14) - All test types
(133, 45, 1, 77.6),  -- Midterm
(134, 45, 2, 81.1),  -- Final
(135, 45, 3, 80.5),  -- Quiz
-- Course Result 46 (Student 13, Course 21) - All test types
(136, 46, 1, 73.8),  -- Midterm
(137, 46, 2, 77.3),  -- Final
(138, 46, 3, 76.8),  -- Quiz
-- Course Result 47 (Student 14, Course 8) - All test types
(139, 47, 1, 72.1),  -- Midterm
(140, 47, 2, 75.6),  -- Final
(141, 47, 3, 75.0),  -- Quiz
-- Course Result 48 (Student 14, Course 15) - All test types
(142, 48, 1, 76.4),  -- Midterm
(143, 48, 2, 79.9),  -- Final
(144, 48, 3, 79.2),  -- Quiz
-- Course Result 49 (Student 14, Course 22) - All test types
(145, 49, 1, 74.7),  -- Midterm
(146, 49, 2, 78.2),  -- Final
(147, 49, 3, 77.5),  -- Quiz
-- Course Result 50 (Student 14, Course 23) - All test types
(148, 50, 1, 71.9),  -- Midterm
(149, 50, 2, 75.4),  -- Final
(150, 50, 3, 74.8),  -- Quiz
-- Course Result 51 (Student 15, Course 9) - All test types
(151, 51, 1, 85.9),  -- Midterm
(152, 51, 2, 89.4),  -- Final
(153, 51, 3, 88.8),  -- Quiz
-- Course Result 52 (Student 15, Course 16) - All test types
(154, 52, 1, 88.2),  -- Midterm
(155, 52, 2, 91.7),  -- Final
(156, 52, 3, 91.0),  -- Quiz
-- Course Result 53 (Student 15, Course 24) - All test types
(157, 53, 1, 87.5),  -- Midterm
(158, 53, 2, 91.0),  -- Final
(159, 53, 3, 90.2),  -- Quiz
-- Course Result 54 (Student 16, Course 10) - All test types
(160, 54, 1, 60.7),  -- Midterm
(161, 54, 2, 64.2),  -- Final
(162, 54, 3, 63.5),  -- Quiz
-- Course Result 55 (Student 16, Course 17) - All test types
(163, 55, 1, 57.3),  -- Midterm
(164, 55, 2, 60.8),  -- Final
(165, 55, 3, 60.0),  -- Quiz
-- Course Result 56 (Student 16, Course 25) - All test types
(166, 56, 1, 63.8),  -- Midterm
(167, 56, 2, 67.3),  -- Final
(168, 56, 3, 66.8),  -- Quiz
-- Course Result 57 (Student 17, Course 11) - All test types
(169, 57, 1, 91.4),  -- Midterm
(170, 57, 2, 94.9),  -- Final
(171, 57, 3, 94.2),  -- Quiz
-- Course Result 58 (Student 17, Course 18) - All test types
(172, 58, 1, 89.8),  -- Midterm
(173, 58, 2, 93.3),  -- Final
(174, 58, 3, 92.5),  -- Quiz
-- Course Result 59 (Student 17, Course 26) - All test types
(175, 59, 1, 92.7),  -- Midterm
(176, 59, 2, 96.2),  -- Final
(177, 59, 3, 95.5),  -- Quiz
-- Course Result 60 (Student 17, Course 27) - All test types
(178, 60, 1, 90.1),  -- Midterm
(179, 60, 2, 93.6),  -- Final
(180, 60, 3, 93.0),  -- Quiz
-- Course Result 61 (Student 18, Course 12) - All test types
(181, 61, 1, 76.5),  -- Midterm
(182, 61, 2, 79.2),  -- Final
(183, 61, 3, 77.8),  -- Quiz
-- Course Result 62 (Student 18, Course 19) - All test types
(184, 62, 1, 79.2),  -- Midterm
(185, 62, 2, 82.7),  -- Final
(186, 62, 3, 81.5),  -- Quiz
-- Course Result 63 (Student 18, Course 28) - All test types
(187, 63, 1, 77.8),  -- Midterm
(188, 63, 2, 81.3),  -- Final
(189, 63, 3, 80.0),  -- Quiz
-- Course Result 64 (Student 19, Course 13) - All test types
(190, 64, 1, 71.6),  -- Midterm
(191, 64, 2, 74.3),  -- Final
(192, 64, 3, 72.9),  -- Quiz
-- Course Result 65 (Student 19, Course 20) - All test types
(193, 65, 1, 74.3),  -- Midterm
(194, 65, 2, 77.8),  -- Final
(195, 65, 3, 76.0),  -- Quiz
-- Course Result 66 (Student 19, Course 29) - All test types
(196, 66, 1, 72.9),  -- Midterm
(197, 66, 2, 76.4),  -- Final
(198, 66, 3, 75.2),  -- Quiz
-- Course Result 67 (Student 20, Course 14) - All test types
(199, 67, 1, 85.2),  -- Midterm
(200, 67, 2, 88.7),  -- Final
(201, 67, 3, 86.4),  -- Quiz
-- Course Result 68 (Student 20, Course 21) - All test types
(202, 68, 1, 88.7),  -- Midterm
(203, 68, 2, 92.2),  -- Final
(204, 68, 3, 90.5),  -- Quiz
-- Course Result 69 (Student 20, Course 30) - All test types
(205, 69, 1, 86.4),  -- Midterm
(206, 69, 2, 89.9),  -- Final
(207, 69, 3, 88.2),  -- Quiz
-- Course Result 70 (Student 20, Course 31) - All test types
(208, 70, 1, 87.9),  -- Midterm
(209, 70, 2, 91.4),  -- Final
(210, 70, 3, 89.7);  -- Quiz; 