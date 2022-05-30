

use TheStateLibrary;


insert into Accounts (AUsernames, APasswords, ARoles)
values
 ('ahmedauday99@localhost','A19285346' , 'Admin'),
 ('mohammedAli@localhost','Ahnedhhd' , 'Employee'),
 ('mahmmodMwfaq@localhost','D7689' , 'Employee'),
 ('ibrahimAfandi@localhost','F1990' , 'Employee'),
 ('ahmedRaed@localhost','V1990837' , 'Employee'),
 ('kararHaider@localhost','V1bnm435' , 'Employee'),
 ('mustafaHafad@localhost','V199nmS37' , 'Employee'),
 ('yousefHojazi@localhost','V1086Yh' , 'Employee'),
 ('mohammedMus22@localhost','Ftrbn56v' , 'Member'),
 ('hussenAli@localhost','C32897' , 'Member'),
 ('usama22@localhost','C332897' , 'Member');


insert into Employees (Fname, Mname, Lname, Gender, PhoneNumber, DateOfBirth ,Position, EuserAccountID ,Salary)
values
  ('Mohammed' , 'Ali' ,'Tariq' , 'Male' , 89990890908, '1990-12-01' , 'librarians' , 2 , 1500.0),
    ('Mahmood' , 'Mwafaq' ,'Fakhri' , 'Male' , 8999777708, '1990-03-04', 'Library Directors' , 3, 1500.0),
    ('Ibrahim' , 'Dler' ,'Khalil' , 'Male' , 8999770988, '1992-04-05' , 'Library Technicians' , 4, 1000.0),
    ('Ahmed' , 'Raed' ,'Shakier' , 'Male' , 89998777708, '1990-09-09' , 'accounting' , 5 ,  1000.0),
    ('Karar' , 'Haider' ,'Ghadban' , 'Male' , 8994327708, '1991-09-15' , 'Library Technicians' , 6, 1400.0),
    ('Mustafa' , 'Hafad' ,'Ali' , 'Male' , 899764708, '1979-02-06', 'Library Technicians' , 7, 1600.0),
    ('Yousef' , 'Alaa' ,'Hojazi' , 'Male' , 899909708, '1995-03-10' , 'Library Technicians' , 8, 1800.0);

insert into Authors (Fname, Lname, Gender, Nationality, DateOfBirth)
values
   ('James' , 'Patterson' , 'Male' , 'USA' , '1974'),
   ('David' , 'Baldacci' , 'Male' , 'USA' , '1960'),
   ('Nora' , 'Roberts' , 'Female' , 'USA' , '1950'),
   ('John' , 'Sandford' , 'Male' , 'USA' , '1944'),
   ('LEE' , 'Child' , 'Male' , 'UK' , '1954'),
   ('Janet' , 'Evanovich' , 'Female' , 'US' , '1943'),
   ('Julia' , 'Quinn' , 'Female' , 'US' , '1970');

insert into  Books (AuthorID, Title, Category, CoverType, NoOfPage, SalesRank, ISBN ,Quantity, BookPrice)
values
       (1 , 'The Runaway' , 'Romance' , 'Hard Cover' ,750 ,1 ,'8cd2ce7114',30,65),
       (2 , 'The 6:20 Man' , 'Action and Adventure' , 'Hard Cover' ,350 ,4 ,'dd492b32dc',20,33),
       (3 , 'Heard Of The Game' , 'Romance' , 'Hard Cover' ,500 ,6 ,'764bf24a9d',30,40),
       (4 , 'The Investigator' , 'Detective and Mystery' , 'Hard Cover' ,300 ,10 ,'985f19c5d4',10,32),
       (5 , 'How To Write a mystery' , 'Detective and Mystery' , 'Hard Cover' ,200 ,13 ,'7f79a22727',5,34),
       (6 , 'The Recovery Agent' , 'Fantasy' , 'Hard Cover' ,340 ,10 ,'7469108f63',10,30),
       (7 , 'The Bridgerton' , 'Romance' , 'Hard Cover' ,430 ,5 ,'554757dff6',10,44);




# select SUBSTR(MD5(RAND()), 1, 10);



insert into  Customers (Fname, Mname, Lname, Gender, PhoneNumber, DateOfBirth ,Addresses)
values
    ('Ali' ,'Ahmed' , 'Lenani' , 'Male' , 832798479 , '2000-05-10','dream city 614'),
    ('Tariq' ,'Shama' , 'Edan' , 'Male' , 84798479 , '1990-05-10','mamostayan floria 22 A54'),
    ('Yousef' ,'Ali' , 'alatbi' , 'Male' , 666698479 , '1988-05-10','Azadi lkj.RD loca A455'),
    ('Ali' ,'Ahmed' , 'Lenani' , 'Male' , 832798479 , '2002-05-10','Hewa A32');


insert into  BorrowedBooksCustomer (CustomerID,EmployeeID,BookID, BorrowDate, ReturnDate , BorrowPrice )

values
    (1,1,1 ,'2022-04-10 12:45:56' , '2022-04-20 12:45:56',30.00 ),
    (2,2,2  ,'2022-05-10 10:40:20' , '2022-05-15 12:45:56' ,10.00),
    (3,4,6  ,'2022-05-15 2:40:20' , '2022-05-20 3:40:20',05.00),
    (4,5,5  ,'2022-05-20 11:40:20' , '2022-05-30 11:40:20',10.00);


insert into CustomerBorrowReports (BorrowedBookID ,IsDamage ,DamageDate, Issues, EstimatedDamageValue )
values (1,1 , '2022-05-20' ,'Water damage' , 10),
       (2,1 , '2022-05-30' ,'Missing Page' , 20),
       (3,0 , '2022-05-30' ,'nothing' , 0),
       (4,0 , '2022-05-30' ,'nothing' , 0);


insert into MembershipTypes (Subscription, Price)
values
    ('12 Month'  , 100.00 ),
    ('6 Month'  , 75.00 ),
    ('Monthly' , 50.00 );

SET FOREIGN_KEY_CHECKS=0;
insert into Members (IDCard,Fname, Mname, Lname, Gender, PhoneNumber, Age, DateOfBirth, Address, StudyLine, MuserAccountID, MembershipTypeID  , MembershipStart , MembershipEnd)
VALUES
    ('940517549a5e3da23830','Hussen' , 'Ali', 'Alatbi','Male',71236783628 , 19 , '2000-05-10' , 'hewa' ,'Student', 10 , 1  , '2022-05-01 12:45:56' , '2023-05-01 12:45:56'),
    ('020b4249784e4fe2dc95','Mohammed' , 'Mustafa', 'Mohammed','Male',74746783628 , 21 , '2002-06-10' , 'Andazaran' ,'Student', 9 , 2  , '2022-04-01 12:45:56' , '2022-10-01 12:45:56'),
    ('1a2ecaff9983aa71137b','Usama' , 'Sardar', 'Mohammed','Male',747645783628 , 20 , '2000-09-10' , 'baktiari' ,'Student', 11 , 3 ,'2022-05-01 12:45:56' , '2022-06-01 12:45:56');


