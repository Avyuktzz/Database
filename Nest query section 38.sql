#nested querys means query inside a query
#outer querys is called as main query ant the inner query is a sub query
use db;
#2 nested querys are join together with help of operater like in,all,not, any,etc
#using in operater on nested querys 

create table coursetb(c_id int,c_name text);
insert into coursetb(c_id,c_name)values(10,"DBA");
insert into coursetb(c_id,c_name)values(20,"DBMS");
insert into coursetb(c_id,c_name)values(30,"PROGRAM");

create table markstable(s_id int,s_name int);
insert into markstable(s_id,s_name)values(1,90);
insert into markstable(s_id,s_name)values(2,85);
insert into markstable(s_id,s_name)values(3,75);
insert into markstable(s_id,s_name)values(4,81);

create table student_course_table1(S_id int,c_id int);
insert into student_course_table1(S_id,c_id)values(1,10);
insert into student_course_table1(S_id,c_id)values(2,10);
insert into student_course_table1(S_id,c_id)values(3,20);
insert into student_course_table1(S_id,c_id)values(2,20);
insert into student_course_table1(S_id,c_id)values(1,30);

create table student_table(S_Id int,S_name int,S_address text,S_Phone int,S_Age int);
insert into student_table(S_Id,S_name,S_address,S_Phone,S_Age)values(1,"REO","PUNE",9867076149,18);
insert into student_table(S_Id,S_name,S_address,S_Phone,S_Age)values(2,"JOHN","DELHI",9922433311,19);
insert into student_table(S_Id,S_name,S_address,S_Phone,S_Age)values(3,"JOE","PUNE",9122038418,17);
insert into student_table(S_Id,S_name,S_address,S_Phone,S_Age)values(3,"MIC","DELHI",983778223784,18);
insert into student_table(S_Id,S_name,S_address,S_Phone,S_Age)values(4,"REO","PUNE",983778223584,18);

#find the s_id who enrolled in course C name DSA or DBMS

select S_id from student_course where c_id in(select c_id from course where c_name="DSA" or c_name ="DBMS");
 #we used here 2 querys because in the question they said find out id of the students who has DSA or DBMS becaues c id and c name doest not come in same table th
#that is why we have to use 2 querys 1 for the CID and 1 for the c name
 
 #find out of student names who has enrolled in the course
 #nested query 
 select S_name from student_table where S_Id in(select S_Id from student_course_table1 where c_id in(select C_id from course where c_name ="DSA" or c_name = "DBMS"));
 #also make that 2 table querys u are writting should have common coloumn between them
 #if by chance two doent have anytjing in common then take the help of the third table which has something common with the first table also and second table also that is why we have used three querys above.
 #third query for the third table 
 
 #find out the s_id who has neither take
 select S_Id from student_table where S_Id in(select S_Id from student_course_table1 where c_id not in(select C_id from course where  c_name ="DSA" or c_name = "DBMS"));
 
 
 #write down the details of the students who have got the maximum age
 select max (s_age) from student_table;
 select * from markstable where s_id = 2;
 
 
 