
use TheStateLibrary;

# to display books with Authors
CREATE VIEW AuthorsBooks AS
SELECT concat_ws(' ',Authors.Fname , Authors.Lname) As AuthorsName, Authors.Gender ,
       Authors.Nationality,Authors.DateOfBirth
     ,Title, Category , CoverType ,NoOfPage ,SalesRank , BookPrice
FROM Books
INNER JOIN Authors ON Books.AuthorID=Authors.ID;


# a view to show the damaged from books //
create view DamagedBooks AS
    select concat(C.Fname , ' ' , C.Mname , ' ' , C.Lname ) AS CustomerName
         , C.PhoneNumber ,C.Addresses , C.DateOfBirth ,c.Gender
            , BB.BorrowDate , BB.ReturnDate ,B.Title,B.ISBN ,R.IsDamage, R.DamageDate ,
              R.Issues , R.EstimatedDamageValue
from BorrowedBooksCustomer as BB
inner join Books B on BB.BookID = B.ID
inner join Customers C on BB.CustomerID = C.ID
inner join CustomerBorrowReports R on BB.ID = R.BorrowedBookID
where R.IsDamage=1;


# a view to show the customer with borrowed books  //
create view CustomerBorrowedBooks AS
    select concat(C.Fname , ' ' , C.Mname , ' ' , C.Lname ) AS CustomerName ,
           C.Gender , C.PhoneNumber ,C.Addresses , C.DateOfBirth
            , BorrowDate , ReturnDate ,R.IsDamage, R.DamageDate , R.Issues ,
            R.EstimatedDamageValue  , BookPrice/2 as borrowPricee , ((BookPrice/2)+EstimatedDamageValue)as Total
from BorrowedBooksCustomer as bbc
inner join Customers C on bbc.CustomerID = C.ID
inner join CustomerBorrowReports R on bbc.ID = R.BorrowedBookID
inner join Books B on bbc.BookID = B.ID;


# to show the none returned books
create view NoneReturnedBooks as
    select * from CustomerBorrowedBooks
where CustomerBorrowedBooks.ReturnDate IS NULL;



# to display all members with subscriptions and accounts
create VIEW  MembersData AS
    select concat_ws(' ',mm.Fname , mm.Mname ,mm.Lname ) As MembersNames , mm.PhoneNumber ,
           mm.Gender , mm.Age , checkAge(mm.Age)  , mm.DateOfBirth , mm.Address ,mm.StudyLine,
           CONCAT(memberLevel(Price) , ' ',MT.Subscription,' ' ,MT.Price ) AS Subscriptions ,
           mm.MembershipStart, getMonths(mm.MembershipStart) AS MemberSince,
           if(mm.MembershipEnd = SYSDATE() ,'Expired' , 'Not Expired') As Status ,mm.MembershipEnd ,
             MT.Price,A.AUsernames , md5(A.APasswords)as Passwors
from Members As mm
inner join MembershipTypes MT on mm.MembershipTypeID = MT.ID
inner join Accounts A on mm.MuserAccountID = A.ID
inner join MembersReports AS r1r on mm.ID = r1r.MemberID;


# to view All employees with accounts
create view Employeess As
    select concat_ws(' ' ,fname, mname, lname) AS EmployeeName, A.AUsernames ,A.ARoles,
           md5(A.APasswords) as Passwors,
           gender, phonenumber, dateofbirth, Position , Salary
    from Employees

inner join Accounts A on Employees.EuserAccountID = A.ID
order by Salary;



