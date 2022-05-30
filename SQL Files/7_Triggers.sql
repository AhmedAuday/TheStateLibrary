use TheStateLibrary;

# to check if the membership end is wrong
DELIMITER //
CREATE TRIGGER dateCheck
BEFORE INSERT ON Employees
FOR EACH ROW
BEGIN
IF NEW.DateOfBirth > '2003-01-01' THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'too young to be employee!';
END IF;
End //
DELIMITER ;




# to check if the wrong date is entered in membership start
delimiter $$
CREATE TRIGGER dateCheckerStart
BEFORE INSERT ON Members
FOR EACH ROW
BEGIN
IF NEW.MembershipStart < sysdate() THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid date start for members!';
END IF;
End $$
    DELIMITER ;



# if customer borrowed a book the qty on book table Well be less
delimiter ah
CREATE TRIGGER QuantityUpdateCustomer
AFTER INSERT
   ON BorrowedBooksCustomer FOR EACH ROW
BEGIN
UPDATE Books
SET Books.Quantity = books.Quantity - 1
WHERE Books.ID = New.BookID;

END; ah
    delimiter ;


delimiter br
CREATE TRIGGER QuantityUpdateMembers
AFTER INSERT
   ON BorrowedBooksMembers FOR EACH ROW
BEGIN
UPDATE Books
SET Books.Quantity = books.Quantity - 1
WHERE Books.ID = New.BookID;

END; br
    delimiter ;








