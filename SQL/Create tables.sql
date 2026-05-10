CREATE TABLE student (
    studentid SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    department VARCHAR(50)
);

-- Course Table
CREATE TABLE course (
    courseid SERIAL PRIMARY KEY,
    title VARCHAR(100),
    credits INTEGER,
    department VARCHAR(50)
);

-- Enrollment Table
CREATE TABLE enrollment (
    enrollid SERIAL PRIMARY KEY,
    studentid INTEGER REFERENCES student(studentid),
    courseid INTEGER REFERENCES course(courseid),
    grade VARCHAR(2)
);



----------------------MySql------------

CREATE TABLE student (
    studentid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

CREATE TABLE course (
    courseid INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    credits INT,
    department VARCHAR(50)
);

create table enrollment (
    enrollid INT AUTO_INCREMENT PRIMARY KEY,
    studentid INT,
    courseid INT,
    grade VARCHAR(2),
    FOREIGN KEY (studentid) REFERENCES student(studentid),
    FOREIGN KEY (courseid) REFERENCES course(courseid)
);  

-------------------------------------------------



INSERT INTO student (name, age, department) VALUES
('Alice', 21, 'Computer Science'),
('Bob', 19, 'Physics'),
('Charlie', 22, 'Mathematics'),
('Diana', 20, 'Computer Science'),
('Ethan', 23, 'Physics');

-- Courses
INSERT INTO course (title, credits, department) VALUES
('Database Systems', 3, 'Computer Science'),
('Quantum Mechanics', 4, 'Physics'),
('Linear Algebra', 3, 'Mathematics'),
('Operating Systems', 4, 'Computer Science');

-- Enrollments
INSERT INTO enrollment (studentid, courseid, grade) VALUES
(1, 1, 'A'),
(1, 4, 'B'),
(2, 2, 'A'),
(3, 3, NULL),
(4, 1, 'C'),
(5, 2, 'B');


Update student 
set name = 'Alicia' ,
age = 22
where Id =1 ; 


Delete from enrollment  ; 
truncate table enrollment ;


delete

1
2
3

delete * 

new data insert 

4
5
6


Truncate

1
2
3

Truncate * 

new data insert 
1
2
3











