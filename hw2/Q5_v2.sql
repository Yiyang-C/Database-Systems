/*
SQLite
Q5
*/

/*
CREATE TABLE Instructors
(
Instructor TEXT NOT NULL,
Subject TEXT NOT NULL
);

INSERT INTO Instructors(Instructor,Subject)
VALUES
('Aleph', 'Scratch'),
('Aleph', 'Java'),
('Aleph', 'Processing'),
('Bit', 'Python'),
('Bit', 'JavaScript'),
('Bit', 'Java'),
('CRC', 'Python'),
('CRC', 'JavaScript'),
('Dat', 'Scratch'),
('Dat', 'Python'),
('Dat', 'JavaScript'),
('Emscr', 'Scratch'),
('Emscr', 'Processing'),
('Emscr', 'JavaScript'),
('Emscr', 'Python');
*/

SELECT Instructor
FROM Instructors
WHERE Subject = 'JavaScript'

INTERSECT

SELECT Instructor
FROM Instructors
WHERE Subject = 'Scratch'

INTERSECT

SELECT Instructor
FROM Instructors
WHERE Subject = 'Python'
/*
From the first solution, I realize that I can also use
INTERSECT to get the answer from three queries.
Except using nested query, I query three times, each time
get the Instructors teaching corresponding languages.
At last INTERSECT the result and get the answer.
*/
