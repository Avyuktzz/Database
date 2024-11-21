#Constrain means the restriction which we on our code.these restriction can bs to make data unique,to ignore the duplicate data,null alues etc...,,,.....,,,....,.,....,,,.....̣.,,...,,.,....,
#these constrains are-
#1. not null - we can a give a coloumn not null which means that the data inside that coloumn cannot be null.
#(we always give constrains when create tables we give this to columns)
use db;
create table table1(name text,id int not null);

#2 unique - this means data has to be unigue no duplikacy aloowed
create table table2(name text,id int unique);

#3. Primary key - Its the add on of both not null and unique
create table table3(name text,id int primary key);

#4. Check - check means to aplly a condition when we exucute the table ccreation 
create table table4(name text,id int check(id > 82));

#forgein constrains in this constrain we one foreign  key is use to transfer data from one table to another.this is done because let say two table have 1 coulomn in common then in order to make sure they have the same data we transfer from 1 table to another using foreign
#we will create two table so we can tranfer the data to one to another
create table persons(id int primary key,prsn_name text,class int);
create table orders(orderid int,ordername text,id int,ordernumber int primary key,foreign key(id)references persons(id));