#group by means grouping one or more coloumn datas together and once its we apply aggregate functionlike min.maths,acount , etc because thes functions are usualy used when there is slot of data
#syntax to use group by :-
#                          select funtion n@me from t@ablen@me where conditi0n group by(column n@mes);

use db;
select count(*) from coursetb group by c_id;

select sum(c_id) from coursetb group by c_name;
#the above is going to sum up all of them who have same name becauxe every name was coming 1 time thay is why we canoot add hghddndn
#write a query to use a sum function with the condition that only the id'd who are greater than ten and we will apply group
#like where is used to we also having functions

select sum(c_id) from coursetb where c_id > 10 group by c_name;


select min(c_id) from coursetb group by c_id;

#order by is used to sort the in order to acensede neding or deceseneding order.asc and desc is used for that.if no = asc as by by default.alter
#syntax  select couloumn1,coulomn2 from table order by couloumn asc
select * from coursetb order by c_id;
select * from coursetb order by c_id asc;
select * from coursetb order by c_name desc;
