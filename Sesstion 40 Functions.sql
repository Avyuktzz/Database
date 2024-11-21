#Function means the inbuilt function which are already availabe which we can use it in quaris ike select ,etc

#1.aggregate Function where take more than one input or so many input and apply function on it to get output on it.aggregate means puting up lot of things togethr and get one 
#example sum function-it use to add add all the numbers

use school;
select sum(marks) from MATHS;
#min/max-they used to find out smallest/biggest number out of all
select max(marks) from MATHS;
select min(marks) from MATHS;
#avg-use to find the average of all numbers
select avg(marks) from MATHS;
#count-is used to count the number of rows
select count(*) from MATHS;


#2Scaler functions these function requires only one input the function of scale

#ucase-converts to CAPITAL letters
select ucase(s_name) from MATHS;
#LCASE-CONVERTS TO small LETTERS
select lcase(s_name) from MATHS;
#mid is use to do the slicing means deleting the text
select mid("bavi",2) as slicing;
select reverse ("tkuvya");
select length("sodiumhydrogencarbonate");
select length("gangaicondacholapuram");
select length("aanaswamimuthuswamivenoobalgopaliyergangaicondacholapuramsodiumhydrogencarbonate");
select now();
#format means if we want to display in particular way like in this we are telling that to display up to zero places of the decimals
select format(6789.2341,0);