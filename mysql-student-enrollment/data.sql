-- data.sql

INSERT INTO students (name, department, enrollment_year)
VALUES ('Alice Kim', 'Computer Science', 2023),
       ('Brian Otieno', 'Information Technology', 2022);

INSERT INTO courses (course_name, department)
VALUES ('Database Systems', 'Computer Science'),
       ('Network Security', 'Information Technology');

INSERT INTO enrollments (student_id, course_id, grade)
VALUES (1, 1, 'A'),
       (2, 2, 'B');
