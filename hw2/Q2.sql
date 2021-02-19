/*
SQLite
Q2
*/

/*
CREATE TABLE Enrollment
(
SID INTEGER NOT NULL,
ClassName TEXT NOT NULL,
Grade TEXT NOT NULL
);

INSERT INTO Enrollment (SID, ClassName, Grade)
VALUES
(123, 'Processing', 'A'),
(123, 'Python', 'B'),
(123, 'Scratch', 'B'),
(662, 'Java', 'B'),
(662, 'Python', 'A'),
(662, 'JavaScript', 'A'),
(662, 'Scratch', 'B'),
(345, 'Scratch', 'A'),
(345, 'JavaScript', 'B'),
(345, 'Python', 'A'),
(555, 'Python', 'B'),
(555, 'JavaScript', 'B'),
(213, 'JavaScript', 'A')
*/

SELECT ClassName, count(*) as Total 
FROM Enrollment
GROUP by ClassName
ORDER by Total DESC;
