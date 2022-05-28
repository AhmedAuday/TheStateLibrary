use TheStateLibrary;

create trigger Accountslogs_insert
    after insert on Accounts
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Accounts_logs
    set

  _Actions = 'Insert',
    New_usernamee = new.usernamee,
    New_Passwordd =new.Passwordd,
    New_Rolee = new.Rolee,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end;



create trigger Authorslogs_insert
    after insert on Authors
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Authors_logs
    set

      _Actions = 'Insert',
      New_Fname =new.Fname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender,
       New_Nationality =new.Nationality ,
       New_DateOfBirth =new.DateOfBirth,
       logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end;



create trigger bookslog_insert
    after insert on Books
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Books_logs
    set


      _Actions='insert',
      New_AuthorID = new.AuthorID  ,
      New_Title=new.Title ,
      New_Category =new.Category ,
      New_CoverType =new.CoverType ,
      New_BookPrice =new.BookPrice,
      New_NoOfPage =new.NoOfPage  ,
      New_SalesRank =new.SalesRank ,
      New_ISBN  =new.ISBN ,
      New_Quantity =new.Quantity ,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;



create trigger BorrowedBookslogs_insert
    after insert on BorrowedBooks
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into BorrowedBooks_logs
    set


      _Actions='insert',
      New_BookID_log =new.BookID ,
      New_BorrowDate =new.BorrowDate ,
      New_ReturnDate =new.ReturnDate,

      New_custID=new.CustomerID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;






create trigger Customers_logs_insert
    after insert on Customers
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Customers_logs
    set
      _Actions='insert',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Addresses = new.Addresses,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;






create trigger Employeeslogs_insert
    after insert on Employees
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Employees_logs
    set
      _Actions='insert',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Postion = new.Postion,
       New_EuserAccountID = new.EuserAccountID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;



create trigger Memberslogs_insert
    after insert on Members
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Members_logs
    set
      _Actions='insert',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Age =new.Age,
       New_Address =new.Address,
       New_StudyLine = new.StudyLine,
       New_MuserAccountID = new.MuserAccountID,
       New_MembershipTypeID = new.MembershipTypeID,
       New_MembershipStart=new.MembershipStart  ,
     New_MembershipEnd=new.MembershipEnd,
       New_ReportID_logs=new.ReportID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;



create trigger MembershipTypeslogs_insert
    after insert on MembershipTypes
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into MembershipTypes_logs
    set
      _Actions='insert',

     New_Subscription =new.Subscription,
     New_Price=new.Price,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;


create trigger Reportslogs_insert
    after insert on Reports
    for each row
    begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Reports_logs
    set
      _Actions='insert',

     new_borrowedBookID=new.BorrowedBookID,
     New_IsDamage =new.IsDamage,
     New_DamageDate =new.DamageDate,
     New_Issues =new.Issues,
     New_EstimatedDamageValue =new.EstimatedDamageValue,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end;

