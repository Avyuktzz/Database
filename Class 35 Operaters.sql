#operaters mean diffrent signs in mySQL 3 catogories we have
#1. arthemetic (+,-,*,/)
#2.comparison (>,<,=,<=,>=,!=)
#3.logical (not,and,or,any,between,in,all)
#we apply these operater on create,select,update,delete
use db;

#logical operaters are used in conditions
#comparison operater are alwasy used in condition and arthematic operater is used to mostly of the begnning of query
select phone_number + 100 as new_phone_number from tb;
select phone_number - 100 as new_phone_number from tb;
select phone_number * 165 as new_phone_number from tb;
select phone_number / 165 as new_phone_number from tb;
select * from tb where phone_number > 1000;
select * from tb where phone_number < 1000;
select * from tb where phone_number = 1000;
select * from tb where phone_number <= 1000;
select * from tb where phone_number >= 1000;
select * from tb where phone_number != 1000;
select * from tb where phone_number > 100 and email = "sigma@gmail.com";
select * from tb where phone_number > 100 or email = "sigma@gmail.com";
select * from tb where not phone_number = 100;