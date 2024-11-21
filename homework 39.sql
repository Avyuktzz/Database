use db;
create table student2(first_name text,last_name text,student_phonenumeber int,email_id text,age int check(age > 82));


create table student2(stuid int,stuname text,student_phonenumber int primary key,foreign key(id)references student(id));