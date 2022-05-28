use TheStateLibrary;

# to show the names of customers who borrowed more than 1 time
SELECT *
FROM Customers
WHERE 1 <
    (SELECT COUNT(*)
     FROM BorrowedBooks
     WHERE CustomerID=Customers.ID);

insert into  BorrowedBooks (CustomerID,BookID, BorrowDate, ReturnDate  )
    VALUES
(3,5  ,'2022-05-20 11:40:20' , '2022-05-30 11:40:20');

# to select Max Salary
  select concat_ws(' ' ,fname, mname, lname) AS EmployeeName, A.usernamee ,A.Rolee,
           gender, phonenumber, dateofbirth, postion ,Salary
    from Employees
inner join Accounts A on Employees.EuserAccountID = A.ID
WHERE Salary = (SELECT MAX(Salary) FROM Employees);



# that returned the book

SELECT concat_ws(' ' , Fname , Mname , Lname) AS CustomerName, Gender , PhoneNumber
FROM
    Customers
WHERE
    ID in (SELECT CustomerID from BorrowedBooks where ReturnDate is not null);



# customer not brrowed any book
SELECT concat_ws(' ' , Fname , Mname , Lname) AS CustomerName
     , Gender ,PhoneNumber , Addresses
FROM
    Customers
WHERE
    ID NOT in (SELECT CustomerID from BorrowedBooks);



# to show number of membership with types
select count(Members.ID) As NumberOFMembership , memberLevel(MT.Price) as membershipTypel
from Members
    inner join MembershipTypes MT on Members.MembershipTypeID = MT.ID group by MembershipTypel;

# to show how many books does the author have (published)
select concat_ws(' ' , A.Fname,A.Lname) AuthorsName ,
    count(A.ID) as TotalBooks from Books inner join Authors A on Books.AuthorID = A.ID
GROUP BY Books.AuthorID;


# to show none returned books
select * from CustomerBorrowedBooks
where CustomerBorrowedBooks.ReturnDate IS NULL;




# to give a raise for employees
select raiseSalary(Salary) from Employees where Postion = 'librarians';
# or
update Employees set Salary = raiseSalary(Salary)
                 where Salary < 1000.0;
# or
update Employees set Salary = raiseSalary(Salary)
                 where Salary between 1000.0 and 1500.0;
# or for all
update Employees set Salary = raiseSalary(Salary);


#to show all the logs
select * from Accounts_logs ;
select * from Authors_logs;
select * from Books_logs;
select * from MembershipTypes_logs;
select * from BorrowedBooks_logs;
select * from Customers_logs;
select * from Employees_logs;
select * from Reports_logs;
select * from Members_logs;

# to show who inserted a that member
select log_ByUser , logs_cdate , logs_ctime
from Members_logs where New_Fname = 'hussen' AND New_Mname= 'Ali';

# to check if there is a new employee inserted by any other user
select * from Employees_logs where log_ByUser != 'root@localhost';
























