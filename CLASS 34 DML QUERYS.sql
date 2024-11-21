#dml
#dml means data manuplation language
#here they have those queris which help of to change data like insert,update,delete,select
#1.insert query is to insert data in table
#syntax to insert : insert into tablename(column1, cloumn2, column3...)values(data1, data2, data3......)
use db;
insert into tb(thename,email,phone_number)values("giga chad","sigma@123",000069000);
insert into tb(thename,email,phone_number)values("meow","kittykaty.com",34343434);
insert into tb(thename,email,phone_number)values("avyukt","avyukt@123",9867076);
#2.select query  is use to veiw or display the table
select * from tb;
#* means all

#3. update query is to update any dta insert a table
#set keyword is use to tell what we want to update
 #syntax for update : update tablename  set column=value, column=value where condition(here we tell which data we want to update)
 update tb set thename = "sigma chad",email="sigma@gmail.com"where email="sigma@123";
 #whwnwever need to  update or delete query we alwasy have to execute the following query
 set sql_safe_updates =0;
 #4 delete is use to delete the data
 #syntax for delete : delete from tablename where condition(here mention what data we want to delete)
 delete from tb where email = "avyukt@123";