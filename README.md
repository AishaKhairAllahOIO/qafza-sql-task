"# qafza-sql-task" 
the task:
Design a Library Database:
Entities: Book, Member, Borrow
Book: ID,name and publish_date
Member:ID,name,email
Borrow :borrow_id (Primary Key), book_id (Foreign Key Book),member_id (Foreign Key  Member), borrow_date, return_date

Write CREATE TABLE statements for all tables

Insert sample data 

Query borrowed books
List all borrowed books with member names ( you need to use JOIN)
Find books currently borrowed (not yet returned) (currently borrowed => return_Date =null)

