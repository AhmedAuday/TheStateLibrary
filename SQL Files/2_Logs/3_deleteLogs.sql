use TheStateLibrary;

 drop trigger if exists Accountslogs_delete;
create trigger Accountslogs_delete
    after delete on Accounts
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Accounts_logs
    set

  _Actions = 'DELETE',
    New_usernamee = OLD.usernamee,
    New_Passwordd =OLD.Passwordd,
    New_Rolee = OLD.Rolee,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end;


drop trigger if exists Authorslogs_delete;
create trigger Authorslogs_delete
    after delete on Authors
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Authors_logs
    set

      _Actions = 'DELETE',
      New_Fname =OLD.Fname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender,
       New_Nationality =OLD.Nationality ,
       New_DateOfBirth =OLD.DateOfBirth,
       logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end;


drop trigger if exists bookslog_delete;
create trigger bookslog_delete
    after delete on Books
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Books_logs
    set


      _Actions='DELETE',
      New_AuthorID = OLD.AuthorID  ,
      New_Title=OLD.Title ,
      New_Category =OLD.Category ,
      New_CoverType =OLD.CoverType ,
      New_BookPrice =OLD.BookPrice,
      New_NoOfPage =OLD.NoOfPage  ,
      New_SalesRank =OLD.SalesRank ,
      New_ISBN  =OLD.ISBN ,
      New_Quantity =OLD.Quantity ,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;



drop trigger if exists BorrowedBookslogs_delete;
create trigger BorrowedBookslogs_delete
    after delete on BorrowedBooks
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into BorrowedBooks_logs
    set


      _Actions='DELETE',
      New_BookID_log =OLD.BookID ,
      New_BorrowDate =OLD.BorrowDate ,
      New_ReturnDate =OLD.ReturnDate,

      New_custID=OLD.CustomerID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;





drop trigger if exists Customers_logs_delete;
create trigger Customers_logs_delete
    after delete on Customers
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Customers_logs
    set
      _Actions='DELETE',

     New_Fname =OLD.Fname ,
      New_Mname=OLD.Mname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender ,
       New_PhoneNumber=OLD.PhoneNumber ,
       New_DateOfBirth =OLD.DateOfBirth,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;





drop trigger if exists Employeeslogs_delete;
create trigger Employeeslogs_delete
    after delete on Employees
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Employees_logs
    set
      _Actions='DELETE',

     New_Fname =OLD.Fname ,
      New_Mname=OLD.Mname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender ,
       New_PhoneNumber=OLD.PhoneNumber ,
       New_DateOfBirth =OLD.DateOfBirth,
       New_Postion = OLD.Postion,
       New_EuserAccountID = OLD.EuserAccountID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;


drop trigger if exists Memberslogs_delete;
create trigger Memberslogs_delete
    after delete on Members
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Members_logs
    set
      _Actions='DELETE',

     New_Fname =OLD.Fname ,
      New_Mname=OLD.Mname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender ,
       New_PhoneNumber=OLD.PhoneNumber ,
       New_DateOfBirth =OLD.DateOfBirth,
       New_Age =OLD.Age,
       New_Address =OLD.Address,
       New_StudyLine = OLD.StudyLine,
       New_MuserAccountID = OLD.MuserAccountID,
       New_MembershipTypeID = OLD.MembershipTypeID,
        New_MembershipStart=OLD.MembershipStart  ,
     New_MembershipEnd=OLD.MembershipEnd,
       New_ReportID_logs=OLD.ReportID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;


drop trigger if exists MembershipTypeslogs_delete;
create trigger MembershipTypeslogs_delete
    after delete on MembershipTypes
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into MembershipTypes_logs
    set
      _Actions='DELETE',

     New_Subscription =OLD.Subscription,
     New_Price=OLD.Price,

     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;

drop trigger if exists Reportslogs_delete;
create trigger Reportslogs_delete
    after delete on Reports
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Reports_logs
    set
      _Actions='DELETE',

     new_borrowedBookID=OLD.BorrowedBookID,
     New_IsDamage =OLD.IsDamage,
     New_DamageDate =OLD.DamageDate,
     New_Issues =OLD.Issues,
     New_EstimatedDamageValue =OLD.EstimatedDamageValue,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;