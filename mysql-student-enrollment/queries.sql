-- queries.sql

-- List all students with their enrolled courses
SELECT s.name, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id;

-- Count number of students per department
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
