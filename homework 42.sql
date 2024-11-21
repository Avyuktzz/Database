

use School;

delimiter &&

create procedure student2 ()  
begin
    select * from subject11;
end &&

delimiter ;

call student2()




delimiter &&

create procedure student3 (in var int)  
begin
    select marks > 60;
end &&

delimiter ;

call student3(3)