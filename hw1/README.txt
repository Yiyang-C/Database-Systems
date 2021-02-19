This is a README file of CSCI585 HW1 - the ER diagram of this small 'STEM' organization.
I used to work as a teaching assistant in the Centre for General Education of my undergraduate university.
I've experienced a very similar scenario before, but I have never thought to create a database to manage it, which is really a good idea to keep everything in great order.
I create the ER diagram by using draw.io following the instructions in the HW1 description.

From 'each class or project will last a week, the entire curriculum will last 6 weeks',
I assume each student enrolls in exact three classes and three projects coressponding to the classes.
Like one of the students choose the class to learn Processing, and he/she should also enroll the project using Processing language.

First, I create a STDENT table, the primary key is STUDENT_ID. In addition, we also want to know students' names. Student contact infomation is optional.
I also have two tables CLASS and PROJECT. They have their primary key: CLASS_ID and PROJECT_ID.

'Students will sign up for a mix of coding classes, and projects.'
The relation between STUDENT and CLASS is M:N, so I need to creat a bridge to convert it into two 1:M relations.
The relation between STUDENT and PROJECT is in the same condition. The table ENROLLMENT_CLASS and ENROLLMENT_PROJECT is created.

'Coding would be taught using Scratch, Processing, Python, Java and JavaScript. Each project would be based on a microcontroller...'
To save this information, in CLASS table, there is an entity called CODING_LANGUAGE. In PROJECT, it is MICROCONTROLLER_TYPE.

'Students pay a single flat fee at the beginning, for the entire curriculum.'
Here, I create another table BALANCE, to store all the income, payment, etc in this table.
The primary key of the table is BALANCE_RECORD_ID. AMOUNT is the entity represent the amount of money
(a positive one means earn such amount of money, negative ones on the contrary).
Between STUDENT and BALANCE, there is a one-to-one relation inplies that each student pay a single flat fee. (so the record will have unique record_id, amount and student_id)

'Instructors (faculty) would teach a variety of coding classes throughout the day, and also oversee projects when they are not teaching.'
the relations among FACULTY, INSTRUCTION_CLASS, INSTRUCTION_PROJECT, CLASS, PROJECT can match the above sentence.

'Each coding class has a textbook.
An instructor might specify a textbook for more than one class that he/she teaches
(eg. the same Python book could be used for Python I and for Python II).
A class would have multiple instructors, and each instructor could potentially use a different text (their favorite) for the same class (which those multiple instructors would teach).'
In order to realize these relations. I create a TEXTBOOK table to record all the textbooks which instructors specified.
I assume each instructor may specify only one textbook or no textbook at all.
But for each class, there may be multiple textbooks for this class has more than one instructor.
Therefore, the relationship between TEXTBOOK and CLASS is M:N. I create CLASS_TEXTBOOKS table to convert it into two 1:M relations.

'Instructors would get paid based on hours they teach, and hours they supervise projects (the supervision pays a higher rate); all instructors are paid identical rates.'
I store the hours each instructor teach a class or suppervise a project in the entities CLASS_HOURS and PROJECT_HOURS in FACULTY table.
There is a one-to-one relation between FACULTY and BALANCE to inply that each instructor get paid. (the record in BALANCE will have unique record_id, amount and faculty_id)

'Projects are done in shared fashion, ie. as a group'
I create a GROUP table, and its primary key is GROUP_ID. From ENROLLMENT_PROJECT we can have students enroll in the same projects to make groups.
Each group will have four students, so it is a 1:M relation.

'Students would sit around large, square, numbered tables (1,2..) assigned to them, to work on projects'
TABLE(PLASTIC) table is created. Tables assigned to groups, and there may be some extra tables.

'At the start of the term, each table would be provided a big plastic storage box containing all the parts for the project the students will work on'
TABLE(PLASTIC) table has a relation 'contain' parts in the PARTS table. In the PARTS table, there are unique parts with unique PARTS_ID.

'At the end of the term, students will return all the parts presumably in good working order, otherwise they would be charged for damaged items. '
PARTS table also have PARTS_STATUS entity. If a part is under bad condition at the end of the term, it will be charged.
Therefore, there is a relation between PARTS and BALANCE. And this may cause more than one record in BALANCE, because each part is used by four students.
We can find the TABLE_ID of exact part, then we can find the GROUP_ID from the TABLE, and finally we can find the students who use this part.

'Each project would require parts specific to it - a microcontroller, and extra hardware such as wheels, motors, sensors, LEDs, switches, enclosures, etc.'
In PROJECT table, it contains a foreign key PARTS_ID, it shows the parts required in a curtain project.

'The owners of the institution plan to order project parts from several online suppliers (such as SparkFun, adafruit etc.)
- there is expected to be multiple orders placed with multiple vendors, to procure all the items.'
In PARTS table, each part also have its supplier information. In addition, PARTS has a relation to BALANCE, which represent the multiple orders placed with mutiple vendors.
(the record in BALANCE will have unique record_id, amount and parts_ids)

'There are several rooms that will be available for the classes and projects - students will be provided a schedule that will list where and when these will be.'
ROOM talble created to represent the rooms in this 'STEM' organization. It has primary key: ROOM_ID.
There are tables in the rooms. In addition, CLASS and PROJECT has foreign key: ROOM_ID, and an entity TIME_PERIOD to show the time and place for each class and project.

'There is a small library that contains books about electronics, coding, etc. A student can check out up to 4 books at a time, which need to be returned in 2 weeks.'
LIBRARY table has the primary key: LIBRARY_RECORD_ID. Each record has record_id, student_id, book_name and return_time to indicate the last time of retuning this book.
There is a relation between LIBRARY and STUDENT.

'At the end of the curriculum, students will be required to rate their instructors, courses, and projects, using a single score for each (one to five stars).'
For the rating of classes and projects, they will be store in the ENROLLMENT_CLASS and ENROLLMENT_PROJECT tables.
As for the rating of instructors, because it is a M:N relation between STUDENT and FACULTY, I create RATE_MY_PROF to store the rating.

That' it of my ER diagram of this small 'STEM' organization. It's a little bit complicated, but I think it can work out smoothly. Thank you.
Yiyang Chen, chenyiya@usc.edu, USC_ID: 3469-7772-17