CREATE database stu;
use stu;

CREATE Table students(
    id int AUTO_INCREMENT PRIMARY KEY ,
    Fname VARCHAR(200) NOT NULL ,
    Lname VARCHAR(200) NOT NULL ,
    email VARCHAR(200) NOT NULL UNIQUE ,
    dep VARCHAR(20) NOT NULL

);


INSERT INTO students( Fname, Lname, email, dep)
VALUES ('Ahmed' , 'Auday' , 'ahmedauday@gmail.com','IT');


SELECT * FROM students;