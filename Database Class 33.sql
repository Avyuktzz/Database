#ddl commands these means data defination commands.
#here we define or create the thing based on the diffrent data diffrent commands are create,drop,alter
#first we create database here then we create table then if we want to delete the whole table
#create database
create database db;
#once  the database is created will have to go to  database after in use 
use db;
#now we create table with diffrent 4 colounm
#along with the coloumn put there datatypes like text,int,varchar
#var char has a limitation with that we always have to give it
create table tb(thename text,email varchar(40),phone_number int);
#we have another way return
#the diffrance between first and the second is if first one creates table but it doesnt if particular table created or not and in the secont it first checks weather the table has created or not
create table  if not exists customer1(thename text,email varchar(40),phone_number int);
#command 2 add the colounm ij case we forget to add the colunm we can use alter queres to add
alter table customer1 add address varchar(40);
#2 veiw or check  the table use the folliwing command 
select * from customer1;
#alter query can can also changetable names
alter table customer1 rename customer;
select * from customer;
#to delete all data from the table 
truncate table tb;
#to delete the whole database 


create database db2;
#to check all the databases 
show databases;
drop database db2;
