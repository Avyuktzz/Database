use school;
create table MATHS(s_name text,marks int,roll_num int);
insert into MATHS(s_name,marks,roll_num)values("bhupendra jogi","3",2);
insert into MATHS(s_name,marks,roll_num)values("deepak kalal",2,3);
select * from MATHS where marks > 60;
select * from MATHS where not marks = 100;
select * from MATHS where marks = 70;