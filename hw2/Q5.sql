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
WHERE Instructor in 
(
SELECT Instructor
FROM Instructors
WHERE Instructor in 
(
SELECT Instructor
FROM Instructors
WHERE Subject = 'JavaScript'
)
AND Subject = 'Scratch'
)
AND Subject = 'Python'
/*
In this solution, I use a query with two nested queries inside.
The very inside query returns the Instructors that teach JavaScript.
And then I query the instructors in the above who also teach Scratch.
At last I query the instructors who also teach Python,
and get the answer.
*/
