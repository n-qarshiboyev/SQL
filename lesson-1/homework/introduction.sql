--Easy
Data - is the raw collected facts about any given business / work.
Database - It is thee collection of data where speecific raw facts are stored in the system. 
Relational database - is a type of database that have structures to allow users to identify which data is related to any other data.
Table - is a place where information are stored, For example, a business can store their customers contacts, emails, addresses on a table to access it easily when needed.

The most important features of SQL Server are:
   It can be accessed from anywhere with login & password
   Several people can edit. add or remove data at the same time
   It does not require powerful PC or laptop, it can be used on an average device
   The added data is always encrypted and secured
   The overall performance is smooth and the ui is user-friendly

There are a lot of authentication modes from Microsoft but the most used ones are from Windows (Windows Authentication) and SQl Server Authentication.



--Medium
create database SchoolDB
create table Students(ID int, Name varchar (50), Age int)



SQL Server is a server where users can store their database, SSMS (SQL Server Management Studio) is an app where that server can be connected. SQL (Structured Queery Language) is a computer language used to 
manage Data.

--Hard
DQL stands for "Data Query Language". One of most used commands of this is "Select" Which is similar to a command called "print". It is used to show selected text or number when executed.

   SELECT column1, column2, ...
   
DML stands for "Data Manipulation Language" Most used DML commands are: insert (to add a new row), update (used to modify the records), delete - sometimes select is also used. 

   INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
   UPDATE table_name SET column1 = value1, column2 = value2, ...
   DELETE FROM table_name   
   
DDL stands for "Data Definition Language" commands are: create (to make new objects like database, tables and etc), alter (to modify existing database object), drop (deletes selected table, views)

      CREATE TABLE table_name
      ALTER TABLE table_name ADD column_name datatype;
   
DCL stands for "Data Control Language" it uses these commands: grant (to give access to users to the database) and revoke (to do the opposite of grant)

   GRANT privilege_name ON object_name TO user_name; 
   REVOKE privilege_name ON object_name FROM user_name;

TCL stands for "Transaction Control Language" and it uses these: begin transaction (Sometimes just begin, starts new transaction), commit (Saves all changes), rollback (undoes all changes that were made)
   
   begin transaction
   commit
   rollback
