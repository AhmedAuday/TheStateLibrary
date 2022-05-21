# done by Ahmed Auday Ahmed
#this one first
# then open Logs folder and run it all

create database TheStateLibrary;
 USE TheStateLibrary;

CREATE TABLE Accounts(
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    usernamee varchar(50) NOT NULL unique ,
    Passwordd varchar(20) NOT NULL ,
    Rolee enum('Admin' , 'Employee' ,'Member') NOT NULL
);

CREATE TABLE Authors(
     ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
     Fname varchar(150) NOT NULL,
      Lname varchar(150) NOT NULL,
      Gender enum('Male','Female') NOT NULL,
      Nationality varchar(150) NOT NULL,
      DateOfBirth int NOT NULL
);

CREATE TABLE MembershipTypes(
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    Subscription enum('Monthly', '6 Month' , '12 Month') not null,
    Price dec(5,2) NOT NULL

);


CREATE TABLE Books(
     ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
     AuthorID int  NOT NULL,
     Title varchar(250) NOT NULL ,
     Category enum('Action and Adventure' , 'History' , 'Detective and Mystery' , 'Fantasy' ,'Horror' , 'Romance' , 'Sci-Fi' , 'Thrillers') NOT NULL,
     CoverType enum ('Hard Cover' , 'PaperBack') not null ,
     BookPrice dec (5,2) NOT NULL ,
     NoOfPage int NOT NULL ,
     SalesRank int NOT NULL,
     ISBN char(10) NOT NULL UNIQUE,
     Quantity int not null,

     CONSTRAINT AuthorName FOREIGN KEY (AuthorID)
    REFERENCES Authors(ID)
    on update cascade
    on delete cascade

);




CREATE TABLE Customers(
    ID int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    Fname varchar(150) NOT NULL,
     Mname varchar(150) NOT NULL,
      Lname varchar(150) NOT NULL,
      Gender enum('Male','Female') NOT NULL,
      PhoneNumber bigint NOT NULL,
      DateOfBirth date NOT NULL,
      Addresses varchar(250) not null

);

CREATE TABLE BorrowedBooks(
     ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
     CustomerID int  not null ,
     BookID int NOT NULL ,
     BorrowDate DATETIME NOT NULL,
     ReturnDate DATETIME ,

     CONSTRAINT Booksss FOREIGN KEY (BookID)
    REFERENCES Books(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT BorrowedBookCustomer FOREIGN KEY (CustomerID)
    REFERENCES Customers(ID)
    on update cascade
    on delete cascade
);

CREATE TABLE Reports(
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    BorrowedBookID int UNIQUE not null ,
    IsDamage bool NOT NULL,
    DamageDate date NOT NULL ,
    Issues varchar(200) NOT NULL ,
    EstimatedDamageValue double(5,2) NOT NULL,

    CONSTRAINT DamageReport FOREIGN KEY (BorrowedBookID)
    REFERENCES BorrowedBooks(ID)
    on update cascade
    on delete cascade

);

CREATE TABLE Employees(
    ID int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    Fname varchar(150) NOT NULL,
     Mname varchar(150) NOT NULL,
      Lname varchar(150) NOT NULL,
      Gender enum('Male','Female') NOT NULL,
      PhoneNumber bigint NOT NULL,
      DateOfBirth date NOT NULL,
      Postion enum ('librarians' , 'Library Technicians' ,'Library Directors' ,'Library Managers' , 'accounting'),
      EuserAccountID int NOT NULL unique,
      Salary dec(6,2) not null ,

  CONSTRAINT EmployeeUserAccount FOREIGN KEY (EuserAccountID)
    REFERENCES Accounts(ID)
    on update cascade
    on delete cascade
);

CREATE TABLE Members (
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    Fname varchar(150) NOT NULL,
     Mname varchar(150) NOT NULL,
     Lname varchar(150) NOT NULL,
     Gender enum('Male','Female') NOT NULL,
     PhoneNumber bigint NOT NULL,
     Age int not null ,
     DateOfBirth date NOT NULL,
     Address varchar(250) NOT NULL ,
     StudyLine enum ('None Student' , 'Bachelor' ,'Master' , 'PHD' ,'Student') NOT NULL,
     MuserAccountID int NOT NULL unique,
     MembershipTypeID int NOT NULL ,
      MembershipStart DATETIME NOT NULL ,
    MembershipEnd DATETIME NOT NULL,
     ReportID int unique ,
     CONSTRAINT CHKPersonAge CHECK (Age>=17),

    CONSTRAINT MemberUserAccount FOREIGN KEY (MuserAccountID)
    REFERENCES Accounts(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT MembershipSubscription FOREIGN KEY (MembershipTypeID)
    REFERENCES MembershipTypes(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT MembersReports FOREIGN KEY (ReportID)
    REFERENCES Reports(ID)
    on update cascade
    on delete cascade
);