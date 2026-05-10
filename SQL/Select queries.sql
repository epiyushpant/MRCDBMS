-- SELECT, FROM, WHERE
SELECT Name, Age
FROM Student
WHERE Age > 20;


-- Using multiple relations (JOIN)
SELECT Student.Name, Course.Title
FROM Student
JOIN Enrollment ON Student.StudentID = Enrollment.StudentID
JOIN Course ON Enrollment.CourseID = Course.CourseID;


-- String/Pattern Matching
SELECT Name
FROM Student
WHERE Name LIKE 'A%';  -- Names starting with A

-- Ordering
SELECT Name, Age
FROM Student
ORDER BY Age DESC;

-- Cartesian Product (not common, but possible)
SELECT Student.Name, Course.Title
FROM Student, Course;

-- Join Types
-- INNER JOIN
SELECT Student.Name, Course.Title
FROM Student
INNER JOIN Enrollment ON Student.StudentID = Enrollment.StudentID
INNER JOIN Course ON Enrollment.CourseID = Course.CourseID;

-- LEFT JOIN
SELECT Student.Name, Course.Title
FROM Student
LEFT JOIN Enrollment ON Student.StudentID = Enrollment.StudentID
LEFT JOIN Course ON Enrollment.CourseID = Course.CourseID;


-- UNION
SELECT Name FROM Student
UNION
SELECT Title FROM Course;

-- INTERSECT (students enrolled in courses with same department)
SELECT Student.Department
FROM Student
INTERSECT
SELECT Course.Department
FROM Course;

-- EXCEPT
SELECT Name FROM Student
EXCEPT
SELECT Name FROM Student WHERE Department = 'Computer Science';

---Nested Queries 

-- Set Membership Test
SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID FROM Enrollment WHERE Grade = 'A'
);

-- Set Comparison
SELECT Name
FROM Student
WHERE Age > ALL (
    SELECT Age FROM Student WHERE Department = 'Physics'
);

-- Test for Empty Relations
SELECT Name
FROM Student
WHERE NOT EXISTS (
    SELECT * FROM Enrollment WHERE Student.StudentID = Enrollment.StudentID
);



-- Aggregate Functions
SELECT AVG(Age) AS AvgAge, COUNT(*) AS TotalStudents
FROM Student;

-- Group By
SELECT Department, COUNT(*) AS DeptCount
FROM Student
GROUP BY Department;

-- Having Clause
SELECT Department, COUNT(*) AS DeptCount
FROM Student
GROUP BY Department
HAVING COUNT(*) > 5;



