USE
TheStateLibrary;

CREATE TABLE Accounts_logs (
    New_ID INT PRIMARY KEY AUTO_INCREMENT,
    _Actions varchar(250),
    New_usernamee VARCHAR(50),
    New_Passwordd VARCHAR(20),
    New_Rolee enum('Admin' , 'Employee' ,'Member'),
    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)
    );
-- true


CREATE TABLE Authors_logs (
    New_ID INT AUTO_INCREMENT PRIMARY KEY,
    _Actions varchar(250),
    New_Fname VARCHAR(150),
    New_Lname VARCHAR(150),
    New_Gender enum('Male','Female'),
    New_Nationality VARCHAR(150),
    New_DateOfBirth INT,
    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)
    );



CREATE TABLE MembershipTypes_logs (
    New_ID INT AUTO_INCREMENT PRIMARY KEY,
    _Actions varchar(250),
    New_Subscription enum('Monthly', '6 Month' , '12 Month'),
    New_Price DEC(5, 2),

    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)
    );


CREATE TABLE Books_logs (
    New_BID INT AUTO_INCREMENT PRIMARY KEY,
    _Actions varchar(250),
    New_AuthorID INT,
    New_Title VARCHAR(250),
    New_Category enum('Action and Adventure' , 'History' , 'Detective and Mystery' , 'Fantasy' ,'Horror' , 'Romance' , 'Sci-Fi' , 'Thrillers'),
    New_CoverType enum ('Hard Cover' , 'PaperBack'),
    New_BookPrice DEC(5, 2),
    New_NoOfPage INT,
    New_SalesRank INT,
    New_ISBN BINARY(16),
    New_Quantity INT,
    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)


    );

CREATE TABLE Reports_logs (
    New_ID INT AUTO_INCREMENT PRIMARY KEY,
    _Actions varchar(250),
    new_borrowedBookID INT,
    New_IsDamage bool,
    New_DamageDate DATE,
    New_Issues VARCHAR(200),
    New_EstimatedDamageValue DEC(5, 2),
    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)
    );

CREATE TABLE BorrowedBooks_logs (
    New_BBID INT AUTO_INCREMENT PRIMARY KEY,
    _Actions varchar(250),
    New_BookID_log INT,
    New_custID INT,
    New_BorrowDate DATETIME,
    New_ReturnDate DATETIME,

    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)

    );

CREATE TABLE Customers_logs (
    New_ID INT PRIMARY KEY AUTO_INCREMENT,
    _Actions varchar(250),
    New_Fname VARCHAR(150),
    New_Mname VARCHAR(150),
    New_Lname VARCHAR(150),
    New_Gender enum('Male','Female'),
    New_PhoneNumber bigint,
    New_DateOfBirth DATE,
    New_Addresses VARCHAR(250),
    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)
    );
-- true


CREATE TABLE Employees_logs (
    New_ID INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    _Actions varchar(250),
    New_Fname VARCHAR(150),
    New_Mname VARCHAR(150),
    New_Lname VARCHAR(150),
    New_Gender enum('Male','Female'),
    New_PhoneNumber bigint,
    New_DateOfBirth DATE,
    New_Postion enum ('librarians' , 'Library Technicians' ,'Library Directors' ,'Library Managers' , 'accounting'),
    New_EuserAccountID INT,
    New_Salary DEC(6, 2),
    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)
    );
-- true


CREATE TABLE Members_logs (
    New_ID INT AUTO_INCREMENT PRIMARY KEY,
    _Actions varchar(250),
    New_Fname VARCHAR(150),
    New_Mname VARCHAR(150),
    New_Lname VARCHAR(150),
    New_Gender enum('Male','Female'),
    New_PhoneNumber bigint,
    New_Age INT,
    New_DateOfBirth DATE,
    New_Address VARCHAR(250),
    New_StudyLine enum ('None Student' , 'Bachelor' ,'Master' , 'PHD' ,'Student'),
    New_MuserAccountID INT,
    New_MembershipTypeID INT,
    New_ReportID_logs INT,
    New_MembershipStart DATETIME,
    New_MembershipEnd DATETIME,

    logs_cdate DATE,
    logs_ctime TIME,
    log_ByUser VARCHAR(250)

    );









