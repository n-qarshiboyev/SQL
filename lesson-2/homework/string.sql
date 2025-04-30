--create database F28-class2ß
use F28-class2

--DDL and DML commands

--Creating SQL objects
  create table Students (ID int, Name varchar(50), Age int)


-- null does not meant empty

create schema HR

select * from system.databases

select * information_schema.tables
select * information_schema.columns

--Inserting data
select * Students
insert into Student values (1, 'Joe', 26)
insert into Student values (2, 'Ben', 23)(3, 'George' 24)
insert into Student(ID, name) values (4, 'Margaret')


insert into Student select 5, 'Dudley' 24
union all 
select 7, 'Fischer', 25

select into Copy_Students from Students

delete from Copy_Students where ID = 2 


--drop 

drop database [test2]
drop table Copy_Students

--truncate
select * from Copy_Students 
truncate table Copy_Students


-- Altering table 
select * in Copy_Students from Students

select * from Copy_Students

alter table Copy_Students 
add email varchar (35)

alter table Copy_Students 
drop column email

alter table Copy_Students
alter column Age varchar (20)


select AVG(age) from Copy_Students

--deleting

delete from Copy_Students where age = null

-- this won't work cause it's false. null doesn't equal to anything. correct version is below. 

delete from Copy_Students where age is null

--update

Select * from Copy_Students
update Copy_Students
set Age = 30 where ID = 3

update Copy_Students
set name  = 'Bobby'

--this changes every name to Bobby

drop table Copy_Students 
select * into Copy_Students from Students

select * from Copy_Students 

update Copy_Updates set age = 25 where age is null

set ansi_nulls on

	
-- altering database name  

s




