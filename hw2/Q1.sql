/* 
SQLite
Q1
*/

CREATE TABLE ProjectRoomBookings
(
roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
CHECK (startTime < endTime)
PRIMARY KEY (roomNum, startTime)
);

/*
For the first issue, using CHECK to solve it.
Make sure the startTime is smaller than endTime.
As for second issue of Q1,
everytime we INSERT,
we want to make sure if new roomNum equals any existing roomNum,
then the new startTime and endTime cannot be in the corresponding existing time range.
*/
