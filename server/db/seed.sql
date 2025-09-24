INSERT INTO users (name, email) VALUES ('John Doe', 'john.doe@example.com');
INSERT INTO users (name, email) VALUES ('Jane Smith', 'jane.smith@example.com');
INSERT INTO users (name, email) VALUES ('Alice Johnson', 'alice.johnson@example.com');
INSERT INTO users (name, email) VALUES ('Bob Brown', 'bob.brown@example.com');
INSERT INTO users (name, email) VALUES ('Charlie Davis', 'charlie.davis@example.com');

INSERT INTO courses (title, description, published_at) VALUES ('Introduction to Programming', 'Learn the basics of programming', datetime('now'));
INSERT INTO courses (title, description, published_at) VALUES ('Advanced Programming', 'Learn advanced programming concepts', datetime('now'));
INSERT INTO courses (title, description, published_at) VALUES ('Data Structures and Algorithms', 'Learn data structures and algorithms', datetime('now'));

-- Course 1: Introduction to Programming modules
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Getting Started with Programming', 1, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Variables and Data Types', 2, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Control Structures', 3, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Functions and Scope', 4, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Arrays and Loops', 5, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Object-Oriented Programming Basics', 6, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Error Handling', 7, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (1, 'Introduction to Programming Quiz', 8, 'quiz');

-- Course 2: Advanced Programming modules
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Advanced Functions and Closures', 1, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Design Patterns', 2, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Memory Management', 3, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Concurrency and Threading', 4, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Advanced OOP Concepts', 5, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Performance Optimization', 6, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Advanced Programming Project', 7, 'project');
INSERT INTO modules (course_id, title, order_index, type) VALUES (2, 'Advanced Programming Assessment', 8, 'quiz');

-- Course 3: Data Structures and Algorithms modules
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Introduction to Data Structures', 1, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Arrays and Linked Lists', 2, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Stacks and Queues', 3, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Trees and Binary Trees', 4, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Hash Tables', 5, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Sorting Algorithms', 6, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Searching Algorithms', 7, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Graph Algorithms', 8, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Algorithm Complexity Analysis', 9, 'lesson');
INSERT INTO modules (course_id, title, order_index, type) VALUES (3, 'Data Structures and Algorithms Final Exam', 10, 'quiz');

-- Progress data for all users across all courses
INSERT INTO progress (user_id, module_id, status, score, last_viewed_at) VALUES 
  -- John Doe (User 1) - Course 1 progress (modules 1-8)
  (1, 1, 'completed', 92.0, datetime('now', '-7 days')),
  (1, 2, 'completed', 88.5, datetime('now', '-6 days')),
  (1, 3, 'completed', 95.0, datetime('now', '-5 days')),
  (1, 4, 'completed', 87.0, datetime('now', '-4 days')),
  (1, 5, 'completed', 91.5, datetime('now', '-3 days')),
  (1, 6, 'completed', 89.0, datetime('now', '-2 days')),
  (1, 7, 'completed', 93.5, datetime('now', '-1 day')),
  (1, 8, 'completed', 90.0, datetime('now')),
  
  -- John Doe (User 1) - Course 2 progress (modules 9-16)
  (1, 9, 'completed', 85.0, datetime('now', '-5 days')),
  (1, 10, 'completed', 88.0, datetime('now', '-4 days')),
  (1, 11, 'in_progress', NULL, datetime('now', '-2 days')),
  (1, 12, 'not_started', NULL, NULL),
  (1, 13, 'not_started', NULL, NULL),
  (1, 14, 'not_started', NULL, NULL),
  (1, 15, 'not_started', NULL, NULL),
  (1, 16, 'not_started', NULL, NULL),
  
  -- John Doe (User 1) - Course 3 progress (modules 17-26)
  (1, 17, 'completed', 94.0, datetime('now', '-3 days')),
  (1, 18, 'completed', 91.0, datetime('now', '-2 days')),
  (1, 19, 'in_progress', NULL, datetime('now', '-1 day')),
  (1, 20, 'not_started', NULL, NULL),
  (1, 21, 'not_started', NULL, NULL),
  (1, 22, 'not_started', NULL, NULL),
  (1, 23, 'not_started', NULL, NULL),
  (1, 24, 'not_started', NULL, NULL),
  (1, 25, 'not_started', NULL, NULL),
  (1, 26, 'not_started', NULL, NULL),
  
  -- Jane Smith (User 2) - Course 1 progress
  (2, 1, 'completed', 96.0, datetime('now', '-6 days')),
  (2, 2, 'completed', 89.5, datetime('now', '-5 days')),
  (2, 3, 'completed', 92.0, datetime('now', '-4 days')),
  (2, 4, 'completed', 87.5, datetime('now', '-3 days')),
  (2, 5, 'completed', 90.0, datetime('now', '-2 days')),
  (2, 6, 'completed', 88.0, datetime('now', '-1 day')),
  (2, 7, 'completed', 93.0, datetime('now')),
  (2, 8, 'completed', 91.5, datetime('now')),
  
  -- Jane Smith (User 2) - Course 3 progress
  (2, 17, 'completed', 95.0, datetime('now', '-4 days')),
  (2, 18, 'completed', 92.5, datetime('now', '-3 days')),
  (2, 19, 'completed', 89.0, datetime('now', '-2 days')),
  (2, 20, 'completed', 91.0, datetime('now', '-1 day')),
  (2, 21, 'in_progress', NULL, datetime('now')),
  (2, 22, 'not_started', NULL, NULL),
  (2, 23, 'not_started', NULL, NULL),
  (2, 24, 'not_started', NULL, NULL),
  (2, 25, 'not_started', NULL, NULL),
  (2, 26, 'not_started', NULL, NULL),
  
  -- Alice Johnson (User 3) - Course 1 progress
  (3, 1, 'completed', 88.0, datetime('now', '-5 days')),
  (3, 2, 'completed', 85.5, datetime('now', '-4 days')),
  (3, 3, 'completed', 90.0, datetime('now', '-3 days')),
  (3, 4, 'completed', 87.0, datetime('now', '-2 days')),
  (3, 5, 'completed', 89.5, datetime('now', '-1 day')),
  (3, 6, 'completed', 86.0, datetime('now')),
  (3, 7, 'completed', 88.5, datetime('now')),
  (3, 8, 'completed', 87.5, datetime('now')),
  
  -- Alice Johnson (User 3) - Course 2 progress
  (3, 9, 'completed', 92.0, datetime('now', '-3 days')),
  (3, 10, 'completed', 89.0, datetime('now', '-2 days')),
  (3, 11, 'completed', 91.5, datetime('now', '-1 day')),
  (3, 12, 'completed', 88.0, datetime('now')),
  (3, 13, 'in_progress', NULL, datetime('now')),
  (3, 14, 'not_started', NULL, NULL),
  (3, 15, 'not_started', NULL, NULL),
  (3, 16, 'not_started', NULL, NULL),
  
  -- Bob Brown (User 4) - Course 2 progress
  (4, 9, 'completed', 94.0, datetime('now', '-4 days')),
  (4, 10, 'completed', 91.0, datetime('now', '-3 days')),
  (4, 11, 'completed', 89.5, datetime('now', '-2 days')),
  (4, 12, 'completed', 92.5, datetime('now', '-1 day')),
  (4, 13, 'completed', 88.0, datetime('now')),
  (4, 14, 'completed', 90.5, datetime('now')),
  (4, 15, 'completed', 87.5, datetime('now')),
  (4, 16, 'completed', 93.0, datetime('now')),
  
  -- Bob Brown (User 4) - Course 3 progress
  (4, 17, 'completed', 96.0, datetime('now', '-3 days')),
  (4, 18, 'completed', 93.5, datetime('now', '-2 days')),
  (4, 19, 'completed', 90.0, datetime('now', '-1 day')),
  (4, 20, 'completed', 92.0, datetime('now')),
  (4, 21, 'completed', 89.5, datetime('now')),
  (4, 22, 'completed', 91.5, datetime('now')),
  (4, 23, 'completed', 88.0, datetime('now')),
  (4, 24, 'completed', 90.0, datetime('now')),
  (4, 25, 'completed', 87.5, datetime('now')),
  (4, 26, 'completed', 94.5, datetime('now')),
  
  -- Charlie Davis (User 5) - Course 1 progress
  (5, 1, 'completed', 85.0, datetime('now', '-7 days')),
  (5, 2, 'completed', 82.5, datetime('now', '-6 days')),
  (5, 3, 'completed', 88.0, datetime('now', '-5 days')),
  (5, 4, 'completed', 84.0, datetime('now', '-4 days')),
  (5, 5, 'completed', 86.5, datetime('now', '-3 days')),
  (5, 6, 'completed', 83.0, datetime('now', '-2 days')),
  (5, 7, 'completed', 87.5, datetime('now', '-1 day')),
  (5, 8, 'completed', 85.5, datetime('now'));