use TheStateLibrary;

START TRANSACTION ;

savepoint BorrowBook;

call  BorrowBook('Ahmed' ,'Mohammed' , 'Ahmed' , 'Male',
    8392798479 , '2000-05-11','dream city 819',
    'The Runaway' , '8cd2ce7114');


savepoint ReturnBook;

call ReturnBook('Ahmed' , 'mohammed' ,
'Ahmed' , '8cd2ce7114' , 0 , 'Nothing');


savepoint GiveRaise;
call GiveRaise('librarians');



savepoint newMember;

call newMember('ali' , 'Yaqoob' , 'sadoon' , 'SS@@hjkl99' , 'Male' , 9209380928308 , 22 , '2001-05-20' ,
    'Some where' , 'Student' , 'Monthly');



savepoint NewEmp;

call newEmployee('ahmed' , 'hashim' , 'ridha' , 'SS@@hkl99' , 'Male' , 9209380928308 ,
    '1997-12-01' , 'librarians');


savepoint renewMember;
call RenewMembership('Usama' , 'Sardar' , 'Mohammed' , '12 Month');


SAVEPOINT deleteEmployee;
CALL delEmployee('ahmed' , 'ridha');


SAVEPOINT DeleteMember;
CALL delMember('ali' , 'sadoon');






call BookSearch('The Runaway');

call BookSearchCat( 'James' , 'Patterson');


