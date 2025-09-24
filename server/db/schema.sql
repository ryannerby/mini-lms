DROP TABLE IF EXISTS progress;
DROP TABLE IF EXISTS modules;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  email TEXT NOT NULL
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  published_at DATETIME
);

CREATE TABLE modules (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_id INTEGER NOT NULL,
  title TEXT NOT NULL,
  order_index INTEGER NOT NULL,
  type TEXT,
  FOREIGN KEY (course_id) REFERENCES courses (id) ON DELETE CASCADE
);

CREATE TABLE progress (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  module_id INTEGER NOT NULL,
  status TEXT NOT NULL CHECK(status IN ('not_started', 'in_progress', 'completed')) DEFAULT 'not_started',
  score REAL,
  last_viewed_at TEXT,
  UNIQUE (user_id, module_id),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  FOREIGN KEY (module_id) REFERENCES modules (id) ON DELETE CASCADE
);

CREATE INDEX idx_modules_course ON modules(course_id, order_index);
CREATE INDEX idx_progress_user_module ON progress(user_id, module_id);
CREATE INDEX idx_progress_user_status ON progress(user_id, status);