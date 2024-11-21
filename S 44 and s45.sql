create database sesstion1;
use sesstion1;
create table department(dname varchar(30)not null,dnumber int not null,location varchar(30),primary key(dnumber));
create table project(pnumber int not null,dnumber int not null,pname varchar(20) not null,primary key(pnumber),foreign key(dnumber)references department(dnumber));
create table payment(salary real not null ,tax real,pension real,deduction real,primary key(salary));
CREATE TABLE employee (
    ename VARCHAR(30) NOT NULL,
    ssn VARCHAR(30) PRIMARY KEY,
    salary REAL NOT NULL,
    dnumber INT NOT NULL,
    sex VARCHAR(8) NOT NULL,
    pnumber INT NOT NULL,
    FOREIGN KEY (dnumber) REFERENCES department(dnumber),
    FOREIGN KEY (pnumber) REFERENCES project(pnumber),
    FOREIGN KEY (salary) REFERENCES payment(salary)
);
CREATE TABLE payroll (
    h_worked REAL NOT NULL,
    ssn VARCHAR(30) NOT NULL,
    r_month REAL NOT NULL,
    PRIMARY KEY (h_worked, ssn),
    FOREIGN KEY (ssn) REFERENCES employee(ssn)
);
create table ledger(ssn varchar(30) not null,l_date varchar(10) not null,primary key(ssn), foreign key(ssn)references employee (ssn));

insert into department(dname,dnumber,location)values("CS",1,"Nikemte");
insert into department(dname,dnumber,location)values("Business",2,"Jimma");
insert into department(dname,dnumber,location)values("IT",3,"Ambo");
insert into department(dname,dnumber,location)values("Agri",4,"Shambo");

insert into project(pname,pnumber,dnumber)values("sisco",001,3);
insert into project(pname,pnumber,dnumber)values("plantscience",002,4);
insert into project(pname,pnumber,dnumber)values("prolong",003,1);
insert into project(pname,pnumber,dnumber)values("marketing",004,2);

insert into payment values(500,3,5,6);
insert into payment values(1500,5,5,10);
insert into payment values(5000,45,78,23);
insert into payment values(2000,123,23,90);
insert into payment values(3500,3,55,60);

select avg(salary) as Avg_salary from payment;


select sum(salary) from payment;

select sum(pension) from payment;

select sum(deduction) from payment;

select max (salary) from payment;
select min (salary) from payment;

select max(pension) from payment;
select min(pension) from payment;

select max(tax) from payment;

select max(deduction) from payment;
select min(deduction) from payment;

DELIMITER &&
CREATE PROCEDURE payment1 ()  
BEGIN  
    select * from psyment;
END &&  
DELIMITER ;
