#joins mean to joiing the 2 tables togetherrr by using the select query this mean we temperorliy display
#that 2 table togetherrr.........
#Types of joins are -
#no.1   natural join in this 2 table which have 1 common column between them .
#also dublicasy of coloumns arenot allowed here that means common coloumn is just take once
use db;
create table employee(empid  int,empname text,deptname text);
create table department1(deptid text,manegername text);
insert into employee(empid,empname,deptname)values(1,"sumit","hr");
insert into employee(empid,empname,deptname)values(2,"joel","it");
insert into employee(empid,empname,deptname)values(3,"biswa","marketing");
insert into employee(empid,empname,deptname)values(4,"sagar","sales");
insert into employee(empid,empname,deptname)values(5,"vaibhav","it");

insert into department1(deptid,manegername)values("it","rohan");
insert into department1(deptid,manegername)values("hr","tanmay");
insert into department1(deptid,manegername)values("hr","tanmay");
insert into department1(deptid,manegername)values("finance","ashish");
insert into department1(deptid,manegername)values("marketing","samay");
insert into department1(deptid,manegername)values("sales","rahul");


select * from employee natural join department1;



#no.2 self join means joining the froom it self in this we dont need a second table to join nthese
#we create a duplicate copy of first table and then that duplicate copy is join from the orgninal

#we have the table employee we will have duplicates of these table as a and b and join it together

select a.empname,b.deptname from employee a,employee b where a.empid = b.empid;
select* from employee a,employee b where a.empid = b.empid;


#no.3 inner join equi join we attack both the two tables including duplicates columnss
#It is same as natural join only difference is in natural join if two same columns are there we
#pick one out it. here if two columns are there then we pick both same columns which means duplicacy
#of columns are allowed

select employee.empname,department.deptname from employee inner join depertement1 on employee.deptname1epartment.deptname;

#4.Cross Join every coloumn of 1 table is joined wwith every coloumn of the seccond table there are chances thata duplicacy might be there
select employee.empname,employee.empid,employee.deptname,department1.manegername from employee,department1;

#5.outer join here we ahve left join and right jjoin In left join all the columns of first table will come and it ignores the second tbale cols.

#In right join all the columns of second table will come and columns of first table are ignored
select * from employee left join department1 on employee.empid = department1.manegername;

select * from employee right join department1 on employee.empid = department1.manegername;



