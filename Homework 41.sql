use school;
create table subject11(Subject_ID int ,Subject_Name varchar(50),Subject_Teacher varchar(70),Student_ID int,Marks int);
insert into subject11(Subject_ID, Subject_Name, Subject_Teacher, Student_ID,Marks)values(2211,"Maths","Ramesh",101,45);
insert into subject11(Subject_ID, Subject_Name, Subject_Teacher, Student_ID,Marks)values(2252,"English","Somya",103,65);
insert into subject11(Subject_ID, Subject_Name, Subject_Teacher, Student_ID,Marks)values(2210,"Chemistry","Suresh",101,45);
insert into subject11(Subject_ID, Subject_Name, Subject_Teacher, Student_ID,Marks)values(2224,"Physics","Aman",103,32);
insert into subject11(Subject_ID, Subject_Name, Subject_Teacher, Student_ID,Marks)values(2248,"Computer","Bhanu",101,32);
select min(Marks) from subject11 order by Marks asc;

select * from subject11 order by Subject_ID;
