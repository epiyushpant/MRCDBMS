

-- 1. Student name, department name, and course name
SELECT s.name AS student_name, d.dept_name, c.course_name
FROM student s
JOIN department d ON s.dept_id = d.dept_id
JOIN enrollment e ON s.student_id = e.student_id
JOIN course c ON e.course_id = c.course_id;

--2. Number of students in each department
SELECT d.dept_name, COUNT(s.student_id) AS total_students
FROM department d
LEFT JOIN student s ON d.dept_id = s.dept_id
GROUP BY d.dept_name;

--3. Courses with number of students enrolled
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM course c
LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name;

--4. Average age of students in each department
SELECT d.dept_name, AVG(s.age) AS avg_age
FROM department d
JOIN student s ON d.dept_id = s.dept_id
GROUP BY d.dept_name;

--5. Students enrolled in more than one course
SELECT s.name, COUNT(e.course_id) AS total_courses
FROM student s
JOIN enrollment e ON s.student_id = e.student_id
GROUP BY s.name
HAVING COUNT(e.course_id) > 1


/* 1. Add email column */
ALTER TABLE student
ADD email VARCHAR(50);


--2. Add phone_number column
ALTER TABLE student
ADD phone_number VARCHAR(15);

3--. Modify column size (MySQL / PostgreSQL)
--👉 MySQL:
ALTER TABLE student
MODIFY name VARCHAR(100);

--👉 PostgreSQL:
ALTER TABLE student
ALTER COLUMN name TYPE VARCHAR(100);


--4. Rename column
--👉 MySQL:

ALTER TABLE department
CHANGE dept_name department_name VARCHAR(50);

--👉 PostgreSQL:
ALTER TABLE department
RENAME COLUMN dept_name TO department_name;

--5. Drop COlumn
ALTER TABLE course
DROP COLUMN credits;

/* Delete Queris */ 

--1. Delete students older than 21
DELETE FROM student
WHERE age > 21;

--2. Delete students from a specific department
DELETE FROM student
WHERE dept_id = 2;

--3. Delete enrollments with grade 'C'
DELETE FROM enrollment
WHERE grade = 'C';

.--4 Delete students not enrolled in any course
DELETE FROM student
WHERE student_id NOT IN (
    SELECT student_id FROM enrollment
);

--👉 Alternative (safer):

DELETE FROM student s
WHERE NOT EXISTS (
    SELECT 1 FROM enrollment e
    WHERE e.student_id = s.student_id
);

-- 5. Delete all records from enrollment
DELETE FROM enrollment;
TRUNCATE TABLE enrollment;











