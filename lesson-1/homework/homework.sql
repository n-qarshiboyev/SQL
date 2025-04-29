--Easy
Data - is the raw collected facts about any given business / work. It can be divided to several types. 
   Structured - Can be displayed in rows, columns and numbers and strings (texts). This data is found in 20% of all data so It requires less storage than unstructured data while also being easy to manage. 

   Unstructured - The data which can’t displayed in rows or columns (etc) since these are mostly images, audios, videos, files or emails. 
   Therefore, it usually takes lots of storage and usually found in 80% of all data. While being uneasy to handle. 

   These two above can also divided by being Quantitive or Qualitative. 

   Quantitative data is the data that can be counted whether it’s money, time or measurements. 

   Qualitative data is the data that cannot be counted as it’s rather about verbal or written feedback, story or descriptions of colors and other qualities which can’t be measured by numbers.
   

   
Database - It is thee collection of data where speecific raw facts are stored in the system. The data there should always be organized and structured. It can be controlled by Database Management system (DBMS)
   
Relational database - is a type of database that have structures to allow users to identify which data is related to any other data. These datas are usually organized in tables.
   
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
create table Students(StudentID int, Name varchar (50), Age int)



SQL Server is a server is a database system that holds information, SSMS (SQL Server Management Studio) is an app & tool used to interact with the added data. 
SQL (Structured Queery Language) is a computer language used to manage Data.

--Hard
DQL stands for "Data Query Language". One of most used commands of this is "Select" Which is similar to a command called "print". It is used to show selected text or number when executed.

   SELECT Students
   
DML stands for "Data Manipulation Language" Most used DML commands are: insert (to add a new row), update (used to modify the records), delete - sometimes select is also used. 

   INSERT INTO Students (StudentID, Name, Age) 
   VALUES ('76', 'Joe', '22');
   UPDATE Students SET StudentID = '76', Name = 'Joe', Age = '22'
   DELETE FROM Students  
   
DDL stands for "Data Definition Language" commands are: create (to make new objects like database, tables and etc), alter (to modify existing database object), drop (deletes selected table, views)

      CREATE TABLE Students_other
      ALTER TABLE Students_other ADD StudentID_other datatype;
   
DCL stands for "Data Control Language" it uses these commands: grant (to give access to users to the database) and revoke (to do the opposite of grant)

   GRANT password_access ON logins TO n-qarshiboyev; 
   REVOKE password_access ON logins FROM n-qarshiboyev;

TCL stands for "Transaction Control Language" and it uses these: begin transaction (Sometimes just begin, starts new transaction), commit (Saves all changes), rollback (undoes all changes that were made)
   
   begin transaction
   commit
   rollback
