CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  start_date DATE,
  end_date DATE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);

-- CREATE TABLE teacher (
--   id SERIAL PRIMARY KEY NOT NULL,
--   name CARCHAR(255) NOT NULL,
--   start_date DATE,
--   end_date DATE,
--   is_active, TRUE/FALSE
-- );

-- CREATE TABLE assistance_request (
-- id SERIAL PRIMARY KEY NOT NULL,
-- assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
-- student_id INTEGER REFERENCES studeents(id) ON DELETE CASCADE,
-- teacher_id INTEGER REFERENCES teacher(id) ON DELETE CASCADE,
-- created_at DATE,
-- started_at DATE,
-- completed_at DATE,
-- student_feedback TEXT,
-- teacher_feedback TEXT,
-- );
