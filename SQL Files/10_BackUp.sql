


-- # creating a user for the backup to be accessed by this user
-- CREATE USER 'ahmed'@'localhost'
--     IDENTIFIED WITH mysql_native_password BY 'AA@@aa1990';
--
-- GRANT all privileges ON *.* TO 'ahmed'@'localhost';
-- flush privileges ;





# this is the back up syntax run this in Terminal!
# mysqldump -u ahmed -p TheStateLibrary > /Users/ahmedauday/Dev/Database/TheStateLibraryBakUp/thestatelibrary_17052022.sql
# the password is AA@@aa1990




# To restore backups just run the following in terminal!
# drop database if exists TheStateLibrary;
# Create database TheStateLibrary;
# mysql -u ahmedauday99 -p TheStateLibrary < /Users/ahmedauday/Dev/Database/TheStateLibraryBakUp/thestatelibrary_17052022.sql
#the password is AA@@aa1990

