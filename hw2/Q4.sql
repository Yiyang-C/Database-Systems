/*
SQLite
Q4
*/

/*
CREATE TABLE Class_Instructor
(
ClassName TEXT NOT NULL,
Instructor TEXT NOT NULL,
StudentNum INTEGER NOT NULL,
PRIMARY KEY (ClassName, Instructor)
);

INSERT INTO Class_Instructor(Instructor, ClassName, StudentNum)
VALUES
('Aleph', 'Scratch', 10),
('Aleph', 'Java', 10),
('Aleph', 'Processing', 10),
('Bit', 'Python', 15),
('Bit', 'JavaScript', 10),
('Bit', 'Java', 10),
('CRC', 'Python', 10),
('CRC', 'JavaScript', 10),
('Dat', 'Scratch', 5),
('Dat', 'Python', 15),
('Dat', 'JavaScript', 20),
('Emscr', 'Scratch', 10),
('Emscr', 'Processing', 5),
('Emscr', 'JavaScript', 10),
('Emscr', 'Python', 15);
*/

-- hourly_rate = 40
SELECT max(cnt) * 0.1 * 40 as Result
FROM
(
SELECT Instructor, sum(StudentNum) as cnt
FROM Class_Instructor
GROUP by Instructor
)
