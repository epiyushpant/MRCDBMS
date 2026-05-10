-- Insert a new student
INSERT INTO Student (Name, Age, Department)
VALUES ('Fiona', 21, 'Mathematics');

-- Insert a new course
INSERT INTO Course (Title, Credits, Department)
VALUES ('Artificial Intelligence', 4, 'Computer Science');

-- Insert a new enrollment record
INSERT INTO Enrollment (StudentID, CourseID, Grade)
VALUES (6, 5, 'A');



-- Delete all students in Physics department
DELETE FROM Enrollment
where enrollid =4 ; 



-- Update a student’s age
UPDATE Student
SET Age = 24
WHERE Name = 'Alice';

-- Update course credits
UPDATE Course
SET Credits = 5
WHERE Title = 'Operating Systems';

-- Update grade for a specific enrollment
UPDATE Enrollment
SET Grade = 'B'
WHERE StudentID = 3 AND CourseID = 103;



