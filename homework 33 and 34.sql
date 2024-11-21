#Homwork:
create database school;
use school;
create table studentid(thename text,email varchar(15),marks int,phone_number int);
insert into studentid(thename,email,marks,phone_number)values("bhupendra jogi","lol@123",23,3423324);
insert into studentid(thename,email,marks,phone_number)values("deepak kalal","kajukatli@1234",12,72722762);
select * from studentid;
show databases;
update studentid set thename ="Deepak Kalal"where email = "lol@123";
set sql_safe_updates =0;
#create database datab and inside that table student with columns name, email, marks, phone number. use show databases to show all datases. use alter to add one more column name teachername. user insert to insert atleast 5 data in student table. use select to display table. use update tp update student name.