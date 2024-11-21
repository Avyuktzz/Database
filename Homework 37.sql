use db;
create table emp(emp_name text,salary int,rankemp int);
insert into emp(emp_name,salary,rankemp)values("sandeep","300",3);
insert into emp(emp_name,salary,rankemp)values("mahesh","250",2);
select * from emp where salary in (select salary from emp where rankemp >= 2);