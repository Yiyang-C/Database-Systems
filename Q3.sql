/*
SQLite
Q3
*/

/*
CREATE TABLE ProjectProgress
(
PID TEXT NOT NULL,
Step INTEGER NOT NULL,
Status TEXT NOT NULL
);

INSERT INTO ProjectProgress(PID, Step, Status)
VALUES
('P100',0,'C'),
('P100',1,'W'),
('P100',2,'W'),
('P201',0,'C'),
('P201',1,'C'),
('P333',0,'W'),
('P333',1,'W'),
('P333',2,'W'),
('P333',3,'W');
*/

SELECT PID
FROM ProjectProgress
WHERE PID in
(
SELECT PID
FROM ProjectProgress
WHERE Step = 0 AND Status = 'C'
)
AND Step = 1 AND Status = 'W';