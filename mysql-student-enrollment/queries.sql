-- 1. Retrieve all students enrolled in a specific course (identified by course_code)
SELECT 
    s.id AS student_id, 
    s.name AS student_name, 
    s.email, 
    c.course_name, 
    c.course_code
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.id
WHERE c.course_code = 'CS101';  -- Replace with the actual course_code

-- 2. Retrieve all courses that a specific student is enrolled in (identified by email or id)

-- Option A: By student email
SELECT 
    s.name AS student_name, 
    s.email, 
    c.course_name, 
    c.course_code
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.id
WHERE s.email = 'alice@example.com';  -- Replace with actual student email

-- Option B: By student ID
SELECT 
    s.name AS student_name, 
    s.email, 
    c.course_name, 
    c.course_code
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.id
WHERE s.id = 1;  -- Replace with actual student ID

-- 3. Return a count of how many students are enrolled in each course
SELECT 
    c.course_name, 
    c.course_code, 
    COUNT(e.student_id) AS student_count
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.course_name, c.course_code;
