

 USE TheStateLibrary;

CREATE TABLE Accounts_logs(
    New_ID int primary key AUTO_INCREMENT,
  _Actions varchar(250),
    New_usernamee varchar(50)   ,
    New_Passwordd varchar(20)  ,
    New_Rolee enum('Admin' , 'Employee' ,'Member'),
    logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)
);
-- true



CREATE TABLE Authors_logs(
      New_ID int AUTO_INCREMENT PRIMARY KEY ,
      _Actions varchar(250),
      New_Fname varchar(150) ,
       New_Lname varchar(150) ,
       New_Gender enum('Male','Female') ,
       New_Nationality varchar(150) ,
       New_DateOfBirth int,
      logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)
);



CREATE TABLE MembershipTypes_logs(
     New_ID int AUTO_INCREMENT PRIMARY KEY,
     _Actions varchar(250),
     New_Subscription enum('Monthly', '6 Month' , '12 Month') ,
     New_Price dec(5,2),

     logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)
);


CREATE TABLE Books_logs(
      New_BID int AUTO_INCREMENT PRIMARY KEY,
      _Actions varchar(250),
      New_AuthorID int  ,
      New_Title varchar(250)  ,
      New_Category enum('Action and Adventure' , 'History' , 'Detective and Mystery' , 'Fantasy' ,'Horror' , 'Romance' , 'Sci-Fi' , 'Thrillers') ,
      New_CoverType enum ('Hard Cover' , 'PaperBack')  ,
      New_BookPrice dec(5,2) ,
      New_NoOfPage int  ,
      New_SalesRank int ,
      New_ISBN BINARY(16)  ,
      New_Quantity int ,
      logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)



);

CREATE TABLE Reports_logs(
     New_ID int AUTO_INCREMENT PRIMARY KEY ,
     _Actions varchar(250),
     new_borrowedBookID int,
     New_IsDamage bool ,
     New_DamageDate date  ,
     New_Issues varchar(200),
     New_EstimatedDamageValue dec(5,2),
  logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)
);

CREATE TABLE BorrowedBooks_logs(
      New_BBID int AUTO_INCREMENT PRIMARY KEY,
      _Actions varchar(250),
      New_BookID_log int  ,
      New_custID int  ,
      New_BorrowDate DATETIME ,
      New_ReturnDate DATETIME ,

  logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)

);

CREATE TABLE Customers_logs(
     New_ID int  PRIMARY KEY AUTO_INCREMENT ,
     _Actions varchar(250),
     New_Fname varchar(150) ,
      New_Mname varchar(150) ,
       New_Lname varchar(150) ,
       New_Gender enum('Male','Female') ,
       New_PhoneNumber bigint ,
       New_DateOfBirth date ,
       New_Addresses varchar(250),
  logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)
                           );
-- true




CREATE TABLE Employees_logs(
     New_ID int  PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
     _Actions varchar(250),
     New_Fname varchar(150) ,
      New_Mname varchar(150) ,
       New_Lname varchar(150) ,
       New_Gender enum('Male','Female') ,
       New_PhoneNumber bigint ,
       New_DateOfBirth date ,
       New_Postion enum ('librarians' , 'Library Technicians' ,'Library Directors' ,'Library Managers' , 'accounting'),
       New_EuserAccountID int,
       New_Salary dec(6,2),
  logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)
);
-- true




CREATE TABLE Members_logs (
     New_ID int AUTO_INCREMENT PRIMARY KEY ,
     _Actions varchar(250),
     New_Fname varchar(150) ,
      New_Mname varchar(150),
      New_Lname varchar(150),
      New_Gender enum('Male','Female') ,
      New_PhoneNumber bigint,
      New_Age int ,
      New_DateOfBirth date ,
      New_Address varchar(250) ,
      New_StudyLine enum ('None Student' , 'Bachelor' ,'Master' , 'PHD' ,'Student'),
      New_MuserAccountID int ,
      New_MembershipTypeID int ,
      New_ReportID_logs int,
      New_MembershipStart DATETIME  ,
     New_MembershipEnd DATETIME,

   logs_cdate date,
    logs_ctime time,
    log_ByUser varchar(250)

);









