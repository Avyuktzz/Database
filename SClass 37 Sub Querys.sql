#Sub Query means Query inside Query it  is call Sub Query

#syntax for subquery :

#select columnname from tablename where columname expression operator(select columname from tablename where)

#The first select which is written is outer query or main query and second select is inner query or subquery

#how to figure it where to use the sub query
#let say they told us to write a query in whichsome columns are in one table  some columns  are in another table now to get both of them we use one query for one table for second query we use second table
#show all the records of employee where employee id is greater than 2 based on employee name
#In the previous question till 2 it was a normal query because written based on employee name that is why we have to add the second query

use school;

#sub query can be apllied on selct,update,delte,insert with help of oparaters >,<,=,in,between,<=.>=,all
#syntax for sub query :
#select columname from tablename where operator(select columname from tablename where...);

#show all the records of customer where marks is greater than 2 based on roll number
#till 4500 it was a simple query but wwhen it said based om customer id then we have to 2 quryssss

select * from MATHS where roll_num in (select roll_num from MATHS where marks >= 2);


#2. Create a MATHS1 whih is similer MATH table that means we are using Duplicate of MATHS table in this  case we use insert query we selct query that means we need to use subb query
create table MATHS1(s_name text,marks int,roll_num int);
insert into MATHS1 select * from MATHS where roll_num in(select roll_num from MATHS); 

#update the in MATHS table  where roll_ num is >= 2 in MATHS 1 table.
#here we use sub query because they talking about 2 tables 1 we need to update 2 which need meantioned in the condition so 2 query will be used

update MATHS set marks = marks * 0.25 where roll_num in (select roll_num from MATHS1 where roll_num >= 2);
set sql_safe_updates=0; 



#4.delete the record from MATH table where roll_name is >= in MATHS table here also they are talking about 2 tables so 2 querys willl be used

delete from MATHS where roll_num in(select roll_num from MATHS1 where roll_num >=2);