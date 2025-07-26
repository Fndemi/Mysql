# MySQL Student Enrollment System

This project implements a student enrollment system using MySQL, including a schema definition, sample data, and query examples.

## Schema Overview

The system contains three main tables:

- **students**: Stores student details such as name, email, date of birth, and program of study.
- **courses**: Stores course information including course name, code, and instructor.
- **enrollments**: A junction table linking students to the courses they are enrolled in, along with the enrollment date.

### Table Relationships

- Each student can enroll in multiple courses.
- Each course can have multiple students.
- The `enrollments` table uses foreign keys (`student_id`, `course_id`) to establish many-to-many relationships between students and courses.

## Files

- `schema.sql` — Creates the `students`, `courses`, and `enrollments` tables. It also drops them first if they already exist (for clean resets).
- `data.sql` — Populates the tables with sample student and course data, and enrollment records.
- `queries.sql` — Contains example SELECT and JOIN queries for analysis.
- `README.md` — Project documentation and instructions.

## How to Run

1. **Start MySQL server** and log in:
   ```bash
   mysql -u root -p -h 127.0.0.1
   ```
