# done by Ahmed Auday Ahmed
#this one first
# then open Logs folder and run it all

create database TheStateLibrary;
 USE TheStateLibrary;

CREATE TABLE Accounts(
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    AUsernames varchar(50) NOT NULL unique ,
    APasswords varchar(20) NOT NULL ,
    ARoles enum('Admin' , 'Employee' ,'Member') NOT NULL
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

CREATE TABLE BorrowedBooksCustomer(
     ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
     EmployeeID INT NOT NULL ,
     CustomerID int  not null ,
     BookID int NOT NULL ,
     BorrowDate DATETIME NOT NULL,
     ReturnDate DATETIME ,
     BorrowPrice DEC(5,2) NOT NULL ,

    CONSTRAINT Booksss FOREIGN KEY (BookID)
    REFERENCES Books(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT BorrowedBookCustomer FOREIGN KEY (CustomerID)
    REFERENCES Customers(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT Invoice FOREIGN KEY (EmployeeID)
    REFERENCES Employees(ID)
    on update cascade
    on delete cascade
);


# todo table for borrowed books for Members with Special discount
CREATE TABLE BorrowedBooksMembers(
     ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
     EmployeeID INT NOT NULL ,
     MemberID int  not null ,
     BookID int NOT NULL ,
     BorrowDate DATETIME NOT NULL,
     ReturnDate DATETIME ,
     BorrowPrice DEC(5,2) NOT NULL ,

    CONSTRAINT Booksss FOREIGN KEY (BookID)
    REFERENCES Books(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT BorrowedBooksMembers FOREIGN KEY (MemberID)
    REFERENCES Customers(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT Invoice FOREIGN KEY (EmployeeID)
    REFERENCES Employees(ID)
    on update cascade
    on delete cascade
);




# todo fix it on everything
CREATE TABLE CustomerBorrowReports(
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    BorrowedBookID int UNIQUE not null ,
    IsDamage bool NOT NULL,
    DamageDate date NOT NULL ,
    Issues varchar(200) NOT NULL ,
    EstimatedDamageValue dec(5,2) NOT NULL,

    CONSTRAINT DamageReport FOREIGN KEY (BorrowedBookID)
    REFERENCES BorrowedBooksCustomer(ID)
    on update cascade
    on delete cascade
);


# todo reports for members borrow books
CREATE TABLE MembersBorrowReports(
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    BorrowedBooksMembersID int UNIQUE not null ,
    IsDamage bool NOT NULL,
    DamageDate date NOT NULL ,
    Issues varchar(200) NOT NULL ,
    EstimatedDamageValue double(5,2) NOT NULL,

    CONSTRAINT DamageReport FOREIGN KEY (BorrowedBooksMembersID)
    REFERENCES BorrowedBooksMembers(ID)
    on update cascade
    on delete cascade
);



CREATE TABLE MembersReports(
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    MemberID INT UNIQUE NOT NULL,
    IsIssue bool NOT NULL,
    Issue VARCHAR(250) NOT NULL,
    Fine DEC(5,2) NOT NULL,
    IssueDate DATETIME NOT NULL,

    CONSTRAINT DamageReport FOREIGN KEY (MemberID)
    REFERENCES Members(ID)
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
    Position enum ('librarians' , 'Library Technicians' ,'Library Directors' ,'Library Managers' , 'accounting'),
    EuserAccountID int NOT NULL unique,
    Salary dec(6,2) not null ,

  CONSTRAINT EmployeeUserAccount FOREIGN KEY (EuserAccountID)
    REFERENCES Accounts(ID)
    on update cascade
    on delete cascade
);


 #todo add trigger for age
CREATE TABLE Members (
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    IDCard CHAR(20) UNIQUE NOT NULL,
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
     CONSTRAINT CHKPersonAge CHECK (Age>=17),

    CONSTRAINT MemberUserAccount FOREIGN KEY (MuserAccountID)
    REFERENCES Accounts(ID)
    on update cascade
    on delete cascade,

    CONSTRAINT MembershipSubscription FOREIGN KEY (MembershipTypeID)
    REFERENCES MembershipTypes(ID)
    on update cascade
    on delete cascade
);

create table BooksDiscount(
    ID int auto_increment primary key comment 'Primary Key',
    bookID int not null unique ,
    StartDate datetime,
    EndDate datetime,
   CONSTRAINT DiscountBook FOREIGN KEY (bookID)
   references Books(ID)
   on UPDATE CASCADE
   on delete cascade
);


create TABLE BuyBooks (
    ID int AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary Key',
    CustomerID INT NOT NULL,
    BookID INT NOT NULL ,
    BoughtDate DATETIME,

    CONSTRAINT buyBook FOREIGN KEY (bookID)
   references Books(ID)
   on UPDATE CASCADE
   on delete cascade,

   CONSTRAINT custbuy FOREIGN KEY (CustomerID)
   references Customers(ID)
   on UPDATE CASCADE
   on delete cascade

);
