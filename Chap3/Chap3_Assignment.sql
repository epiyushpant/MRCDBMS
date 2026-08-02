CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT
);

CREATE TABLE enrollment (
    enroll_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

---------Insert quesrises--------
INSERT INTO department (dept_name) VALUES
('Computer Science'),
('Management'),
('Mathematics');

INSERT INTO student (name, age, dept_id) VALUES
('Ram', 20, 1),
('Sita', 21, 2),
('Hari', 22, 1),
('Gita', 20, 3);

INSERT INTO course (course_name, credits) VALUES
('DBMS', 3),
('OS', 4),
('Math', 3);

INSERT INTO enrollment (student_id, course_id, grade) VALUES
(1,1,'A'),
(1,2,'B'),
(2,1,'A'),
(3,3,'C'),
(4,3,'B');


------------------------
/* Update 

1.Update the age of student Ram to 22.
2.Change the department of student Sita to Computer Science (dept_id = 1).
3.Increase the credits of course DBMS to 4.

*/ 

/*
1. Display all students
2. Find students older than 20
3 .Display students from Computer Science department
4. List all courses with credits > 3
*/

/*  joins and aggregate functions 

1. Display student name, department name, and course name for all students who are enrolled in courses.
2. Find the number of students in each department and display the department name along with the count.
3. List all courses along with the number of students enrolled in each course.
4. Find the average age of students in each department and display department name with average age.
5. Display students who are enrolled in more than one course along with the number of courses they have taken.


*/  

/* Alter questions 

1. Add a new column email to the student table.
2.Add a column phone_number (VARCHAR(15)) to the student table.
3.Modify the column name in student table to increase its size to VARCHAR(100).
4.Rename the column dept_name in department table to department_name.
5.Drop the column credits from the course table.


Delete Questions 
1.Delete all students whose age is greater than 21.
2.Delete records of students who belong to a specific department (e.g., dept_id = 2).
3.Delete all enrollments where grade is 'C'.
4.Delete students who are not enrolled in any course.
5.Delete all records from the enrollment table (without dropping the table).
*/ 

/* For grant and revoke * 

CREATE USER user1 IDENTIFIED BY 'password1';
CREATE USER user2 IDENTIFIED BY 'password2';

GRANT SELECT ON student TO user1;
GRANT SELECT, INSERT ON course TO user1;
GRANT ALL PRIVILEGES ON enrollment TO user2;
GRANT UPDATE ON student TO user1;
GRANT SELECT ON college_db.* TO user1;


REVOKE SELECT ON student FROM user1;
REVOKE INSERT ON course FROM user1;
REVOKE ALL PRIVILEGES ON enrollment FROM user2;
REVOKE UPDATE ON student FROM user1;
REVOKE SELECT ON college_db.* FROM user1;





















