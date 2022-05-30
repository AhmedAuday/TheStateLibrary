use TheStateLibrary;

# To Search for a book
DELIMITER $
DROP procedure if exists BookSearch$
create procedure BookSearch(in BookName varchar(250))
BEGIN
    DECLARE Avalable varchar(200);
    set Avalable = (select authorsbooks.Title from authorsbooks where authorsbooks.Title = BookName);

    IF (Avalable = BookName)
    then
        select * from authorsbooks where authorsbooks.Title = BookName;


    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Book Not Available';
    End IF;
end $
delimiter ;


#  Book Filter serach by (author name) ,

DELIMITER $
DROP procedure if exists BookSearchCat$
create procedure BookSearchCat(in Fnames varchar(50), lnames varchar(50))
BEGIN


    DECLARE Availablename varchar(50);


    set Availablename = (select authorsbooks.AuthorsName
                         from authorsbooks
                         where authorsbooks.AuthorsName = concat(Fnames, ' ', lnames));


    if (Availablename = concat(Fnames, ' ', lnames)) then
        select * from authorsbooks where authorsbooks.AuthorsName = Availablename;


    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category Not Available';
    End IF;
end $
delimiter ;


# to borrow a Book for customer
DELIMITER $
DROP procedure if exists CustBorrowBook$
create procedure CustBorrowBook(
    in fnames varchar(250), in mnames varchar(250),
    in lnames varchar(250), in genders varchar(20), in phonenumbers bigint, in dateofb date, in adrees varchar(250),
    in BookName varchar(250), isbns char(10) )

BEGIN
    DECLARE BookIDS int;
    DECLARE availableBooks varchar(250);
    DECLARE AvalableCustomerFname VARCHAR(150);
    DECLARE AvalableCustomerMname VARCHAR(150);
    DECLARE AvalableCustomerLname VARCHAR(150);
    DECLARE CustID int;
    DECLARE s varchar(50);
    DECLARE EmployeeIDs int;
    DECLARE EmpUserName INT;
    DECLARE CurrentUserName VARCHAR(250);
    DECLARE BookPrices DEC(5,2);



    SET availableBooks = (select Title FROM Books where Title = BookName);
    set BookIDS = (select Books.ID from Books where Title = BookName AND ISBN = isbns);
    SET AvalableCustomerFname =(SELECT Fname FROM Customers WHERE fnames = Fname);
    SET AvalableCustomerMname =(SELECT Mname FROM Customers WHERE mnames = Mname);
    SET AvalableCustomerLname =(SELECT Lname FROM Customers WHERE lnames = Lname);

    IF (availableBooks = BookName) THEN

        IF  (AvalableCustomerFname != fnames AND AvalableCustomerLname != lnames AND AvalableCustomerMname != mnames) THEN

            insert into Customers (Fname, Mname, Lname, Gender, PhoneNumber, DateOfBirth, Addresses)
             values (fnames, mnames, lnames, genders, phonenumbers, dateofb, adrees);

        END IF;

        SET BookPrices = (SELECT BookPrice FROM Books WHERE Title = BookName AND ISBN = isbns);

        SET CurrentUserName = current_user;

        SET EmpUserName = (SELECT ID FROM Accounts WHERE AUsernames = concat(TRIM(CurrentUserName)));

        set CustID = (select ID from Customers where Fname = fnames and Mname = mnames and Lname = lnames);
        SET EmployeeIDs = (SELECT ID FROM Employees WHERE EuserAccountID = EmpUserName);

        INSERT INTO BorrowedBooksCustomer (EmployeeID,BookID, BorrowDate, ReturnDate, CustomerID , BorrowPrice)
        VALUES (EmployeeIDs,BookIDS, sysdate(), null, CustID , BorrowBookPrice(BookPrices));

        SET s = 'successfully ';
        select s;

    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Book Not Available';
    END IF;
end $
delimiter ;



# to return a book if the returned date is not specified
DELIMITER %%
DROP procedure if exists ReturnBook%%
create procedure ReturnBook(in fnames varchar(250), in mnames varchar(250), in lnames varchar(250),
                            in bookIsbn char(10), in isDamages tinyint, issue varchar(100))
BEGIN
    DECLARE custID int;
    DECLARE availablebooks char(10);
    DECLARE BoorowBOOksIDS int;
    DECLARE Fee dec(5, 2);
    DECLARE s varchar(50);

    SET availablebooks = (select ISBN FROM Books where ISBN = bookIsbn);
    SET custID = (select ID from Customers where Fname = fnames AND Mname = mnames AND Lname = lnames);

    IF (availablebooks = bookIsbn) THEN

        UPDATE BorrowedBooks t SET t.ReturnDate = date_add(now(), INTERVAL 5 minute) WHERE t.CustomerID = custID;

        if (isDamages = 1) then
            set BoorowBOOksIDS = (select ID from BorrowedBooks t WHERE t.CustomerID = custID);

            set Fee = (select (BookPrice / 3) + 2 from Books where ISBN = bookIsbn);

            insert into Reports (IsDamage, DamageDate, Issues, EstimatedDamageValue, BorrowedBookID)
            values (1, curdate(), issue, fee, BoorowBOOksIDS);

            SET s = 'book Returned successfully ';
            select s;

        end if;

    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Book Not Available';
    END IF;
end %%
delimiter ;


# to give a raise for an employees positions  by 15%
delimiter $$$
DROP procedure if exists GiveRaise$$$
create procedure GiveRaise(in postions varchar(50))
begin
    DECLARE s varchar(50);
    update Employees
    set Salary = raiseSalary(Salary)
    where Postion = postions;
    SET s = 'Successfully';
    select s;
end $$$
delimiter ;


# add new member
delimiter &$
DROP procedure if exists newMember&$
create procedure newMember(in fnames varchar(200), in mnames varchar(200), in lnames varchar(200),
                           in `p_Passw` varchar(30),
                           in genders enum ('Male' , 'Female'), in phoneNumbers bigint, in Ages int, in Birthdate date,
                           in Adreeses varchar(200), study varchar(200),
                           subscriptionss enum ('Monthly', '6 Month' , '12 Month'))

begin
    declare `p_Name` varchar(200);
    DECLARE `_HOST` CHAR(14) DEFAULT '@\'localhost\'';
    DECLARE UserAccount int;
    DECLARE MembershipID int;
    DECLARE EndDate datetime;
    DECLARE s varchar(50);

    set `p_Name` = concat(fnames, lnames);

    SET `p_Name` = CONCAT('\'', REPLACE(TRIM(`p_Name`), CHAR(39), CONCAT(CHAR(92), CHAR(39))), '\''),
        `p_Passw` := CONCAT('\'', REPLACE(`p_Passw`, CHAR(39), CONCAT(CHAR(92), CHAR(39))), '\'');
    SET @`sql` := CONCAT('CREATE USER ', `p_Name`, `_HOST`, ' IDENTIFIED BY ', `p_Passw`);
    PREPARE `stmt` FROM @`sql`;
    EXECUTE `stmt`;
    SET @`sql` := CONCAT('GRANT SELECT ON TheStateLibrary.AuthorsBooks TO ', `p_Name`, `_HOST`);
    PREPARE `stmt` FROM @`sql`;
    EXECUTE `stmt`;
    DEALLOCATE PREPARE `stmt`;
    FLUSH PRIVILEGES;

    INSERT INTO Accounts (usernamee, Passwordd, Rolee)
    VALUES (concat(`p_Name`, `_HOST`), `p_Passw`, 'Member');

    set UserAccount = (select ID FROM Accounts WHERE usernamee = concat(`p_Name`, `_HOST`));

    if (subscriptionss = 'Monthly') then
        set MembershipID = (select ID from MembershipTypes where Subscription = 'Monthly');
        set EndDate = DATE_ADD(sysdate(), INTERVAL 1 MONTH);

    elseif (subscriptionss = '6 Month') then
        set MembershipID = (select ID from MembershipTypes where Subscription = '6 Month');
        set EndDate = DATE_ADD(sysdate(), INTERVAL 6 MONTH);

    elseif (subscriptionss = '12 Month') then
        set MembershipID = (select ID from MembershipTypes where Subscription = '12 Month');
        set EndDate = DATE_ADD(sysdate(), INTERVAL 12 MONTH);

    end if;

    insert into Members(fname, mname, lname, gender, phonenumber, age,
                        dateofbirth, address, studyline, museraccountid, membershiptypeid, MembershipStart,
                        MembershipEnd)
    values (fnames, mnames, lnames, genders,
            phoneNumbers, Ages, Birthdate, Adreeses, study, UserAccount, MembershipID, date_add(sysdate() , INTERVAL 4 MINUTE ), EndDate);

    SET s = 'Member Registered Successfully';
    select s;
end &$
delimiter ;

# add new Employee
delimiter *!
DROP procedure if exists newEmployee*!
create procedure newEmployee(
    in fnames varchar(200), in mnames varchar(200), in lnames varchar(200), in `p_Passw` varchar(30),
    in genders enum ('Male' , 'Female'), in phoneNumbers bigint, in Birthdate date
    , in postin enum ('librarians' , 'Library Technicians' ,'Library Directors' ,'Library Managers' , 'accounting'))

begin
    declare `p_Name` varchar(200);
    DECLARE `_HOST` CHAR(14) DEFAULT '@\'localhost\'';
    DECLARE UserAccount int;
    declare sal dec(6, 2);
    DECLARE s varchar(255);

    if (postin = 'librarians') then
        set sal = 1500.0;
    elseif (postin = 'Library Directors') then
        set sal = 1000.0;
    elseif (postin = 'Library Managers') then
        set sal = 1700.0;
    elseif (postin = 'Library Technicians') then
        set sal = 1500.0;
    elseif (postin = 'accounting') then
        set sal = 1300.0;
    END IF;

    set `p_Name` = concat(fnames, lnames);

    SET `p_Name` = CONCAT('\'', REPLACE(TRIM(`p_Name`), CHAR(39), CONCAT(CHAR(92), CHAR(39))), '\''),
        `p_Passw` := CONCAT('\'', REPLACE(`p_Passw`, CHAR(39), CONCAT(CHAR(92), CHAR(39))), '\'');
    SET @`sql` := CONCAT('CREATE USER ', `p_Name`, `_HOST`, ' IDENTIFIED BY ', `p_Passw`);
    PREPARE `stmt` FROM @`sql`;
    EXECUTE `stmt`;
    SET @`sql` := CONCAT('GRANT SELECT,INSERT ON TheStateLibrary.AuthorsBooks TO ', `p_Name`, `_HOST`);
    PREPARE `stmt` FROM @`sql`;
    EXECUTE `stmt`;
    DEALLOCATE PREPARE `stmt`;
    FLUSH PRIVILEGES;

    INSERT INTO Accounts (usernamee, Passwordd, Rolee)
    VALUES (concat(`p_Name`, `_HOST`), `p_Passw`, 'Employee');

    set UserAccount = (select ID FROM Accounts WHERE usernamee = concat(`p_Name`, `_HOST`));
    insert into Employees(fname, mname, lname, gender, phonenumber, dateofbirth, EuserAccountID, Postion, Salary)
    values (fnames, mnames, lnames, genders, phoneNumbers, Birthdate, UserAccount, postin, sal);

    SET s = 'employee Registered Successfully';
    select s;

end *!
delimiter ;

# to Renew Membership
delimiter %%
create procedure RenewMembership(in fnames varchar(100), in mnames varchar(100), in lnames varchar(100),
                                 in subsc enum ('Monthly', '6 Month' , '12 Month'))
begin

    declare subID int;
    set subID = (select ID from MembershipTypes where Subscription = subsc);


    if (subsc = 'Monthly') then

        update Members
        set MembershipStart = subdate(now(), INTERVAL 4 minute)
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;
        update Members
        set MembershipEnd =DATE_ADD(sysdate(), INTERVAL 12 MONTH)
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;
        update Members
        set MembershipTypeID = subID
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;

    elseif (subsc = '6 Month') then

        update Members
        set MembershipStart = subdate(now(), INTERVAL 4 minute)
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;
        update Members
        set MembershipEnd =DATE_ADD(sysdate(), INTERVAL 12 MONTH)
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;
        update Members
        set MembershipTypeID = subID
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;

    elseif (subsc = '12 Month') then

        update Members
        set MembershipStart = subdate(now(), INTERVAL 4 minute)
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;
        update Members
        set MembershipEnd =DATE_ADD(sysdate(), INTERVAL 12 MONTH)
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;
        update Members
        set MembershipTypeID = subID
        where Fname = fnames
          and Mname = mnames
          and Lname = lnames;
    end if;


end %%
delimiter ;





# delete Employee
delimiter **
DROP procedure if exists delEmployee**
create procedure delEmployee(
    in fnames varchar(200), in lnames varchar(200) )
begin
    declare `p_Name` varchar(200);
    DECLARE `_HOST` CHAR(14) DEFAULT '@\'localhost\'';
    DECLARE IDUser int;
    DECLARE s VARCHAR(50);

    set `p_Name` = concat(fnames, lnames);
    SET `p_Name` = CONCAT('\'', REPLACE(TRIM(`p_Name`), CHAR(39), CONCAT(CHAR(92), CHAR(39))), '\'');
    SET @`sql` := CONCAT(' DROP USER ', `p_Name`, `_HOST`);
    PREPARE `stmt` FROM @`sql`;
    EXECUTE `stmt`;
    DEALLOCATE PREPARE `stmt`;

    set IDUser = (SELECT ID FROM Accounts WHERE usernamee  = concat(`p_Name`, `_HOST`));

    DELETE FROM Employees WHERE EuserAccountID = IDUser;
    DELETE FROM Accounts WHERE ID = IDUser;

    SET s = 'employee Deleted Successfully';
     select s;

end **
delimiter ;



# delete  Member
delimiter **
DROP procedure if exists delMember**
create procedure delMember(
    in fnames varchar(200), in lnames varchar(200) )
begin
    declare `p_Name` varchar(200);
    DECLARE `_HOST` CHAR(14) DEFAULT '@\'localhost\'';
    DECLARE IDUser int;
    DECLARE s VARCHAR(50);

    set `p_Name` = concat(fnames, lnames);
    SET `p_Name` = CONCAT('\'', REPLACE(TRIM(`p_Name`), CHAR(39), CONCAT(CHAR(92), CHAR(39))), '\'');
    SET @`sql` := CONCAT(' DROP USER ', `p_Name`, `_HOST`);
    PREPARE `stmt` FROM @`sql`;
    EXECUTE `stmt`;
    DEALLOCATE PREPARE `stmt`;

    set IDUser = (SELECT ID FROM Accounts WHERE usernamee  = concat(`p_Name`, `_HOST`));


    DELETE FROM Members WHERE MuserAccountID = IDUser ;
    DELETE FROM Accounts WHERE ID = IDUser;

    SET s = 'Member Deleted Successfully';
     select s;

end **
delimiter ;



