use TheStateLibrary;
# to do a membership type
DELIMITER $$
CREATE FUNCTION memberLevel(
	prices DECIMAL(5,2)
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE memberShip VARCHAR(20);

    IF (prices = 100.00) THEN
		SET memberShip = 'PLATINUM';
    ELSEIF (prices = 75.00 ) THEN
        SET memberShip = 'GOLD';
    ELSEIF (prices = 50.00) THEN
        SET memberShip = 'SILVER';
    END IF;

	RETURN (memberShip);
END$$
DELIMITER ;

# to to output Eligible if member above 17 years
DELIMITER $$
CREATE FUNCTION checkAge(age INTEGER) RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE k varchar(20);
IF age >= 17 THEN
set k = 'Eligible';
ELSE
set k ='NotEligible';
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT ='Not Eligible age for a Member';
END IF;
    return (k);
END$$
DELIMITER ;


# to get month form day started
DELIMITER $$
CREATE FUNCTION getMonths(sampledate date) RETURNS int DETERMINISTIC
BEGIN
DECLARE currentDate DATE;
Select current_date()into currentDate;
RETURN (12 * (YEAR(currentDate)
- YEAR(sampledate))
+ (MONTH(currentDate)
- MONTH(sampledate)));
END $$
DELIMITER ;

# to give a raise by 15%
DELIMITER $*
CREATE FUNCTION raiseSalary(
	salarys DECIMAL(6,2)
)
RETURNS dec(6,2)
DETERMINISTIC
BEGIN
    DECLARE empsal dec(6,2);

   SET empsal = ( salarys + (salarys * 15 / 100) );

	RETURN (empsal);
END $*
DELIMITER ;



