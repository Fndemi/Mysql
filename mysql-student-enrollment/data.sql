
-- Insert at least 5 distinct student records
INSERT INTO students (name, email, dob, program)
VALUES 
    ('Alice Kim', 'alice.kim@example.com', '2002-03-14', 'Computer Science'),
    ('Brian Otieno', 'brian.otieno@example.com', '2001-07-22', 'Information Technology'),
    ('Caroline Njeri', 'caroline.njeri@example.com', '2000-12-01', 'Information Systems'),
    ('David Mwangi', 'david.mwangi@example.com', '2002-09-17', 'Computer Engineering'),
    ('Emily Achieng', 'emily.achieng@example.com', '2003-05-05', 'Software Engineering');

-- Insert at least 3 unique course records
INSERT INTO courses (course_name, course_code, instructor)
VALUES 
    ('Database Systems', 'CS202', 'Dr. Grace Wambui'),
    ('Network Security', 'IT310', 'Mr. John Kariuki'),
    ('Software Engineering Principles', 'SE101', 'Ms. Linda Mwende');

-- Enroll students into courses with enrollment dates
INSERT INTO enrollments (student_id, course_id, date_enrolled)
VALUES 
    (1, 1, '2024-01-10'),
    (2, 2, '2024-01-12'),
    (3, 1, '2024-01-13'),
    (4, 3, '2024-01-15'),
    (5, 2, '2024-01-18');
