use library_data_base;
show databases;

create table Book(BOOK_ID INT primary key,BOOK_NAME VARCHAR(100),PUBLISH_DATE DATE);
create table Member(MEMBER_ID INT primary key,MEMBER_NAME VARCHAR(100),EMAIL VARCHAR(100));
create table Borrow(BORROW_ID INT primary key,BOOK_ID INT,MEMBER_ID INT,foreign key(BOOK_ID) references Book(BOOK_ID),foreign key(MEMBER_ID) references Member(MEMBER_ID),BORROW_DATE DATE,RETURN_DATE DATE);

insert into Book values
(1,'Book One','2020-01-15'),
(2,'Book Tow','2021-06-10'),
(3,'Book Three','2019-09-30');

insert into Member values
(1,'Member One','member1@example.com'),
(2,'Member Tow','member2@example.com'),
(3,'Member Three','member3@example.com');

insert into Borrow values
(100,1,1,'2025-08-01','2025-08-10'),
(101,2,1,'2025-08-05',null),
(102,3,2,'2025-08-12','2025-08-20'),
(103,1,3,'2025-08-21',null);

SELECT Borrow.*,Book.BOOK_NAME,Member.MEMBER_NAME FROM Borrow
INNER JOIN Book ON Borrow.BOOK_ID=Book.BOOK_ID
INNER JOIN Member ON Borrow.MEMBER_ID=Member.MEMBER_ID;

SELECT Borrow.BORROW_ID,Book.BOOK_NAME,Member.MEMBER_NAME,Borrow.BORROW_DATE FROM Borrow
INNER JOIN Book ON Borrow.BOOK_ID=Book.BOOK_ID
INNER JOIN Member ON Borrow.MEMBER_ID=Member.MEMBER_ID
WHERE Borrow.RETURN_DATE IS NULL;
