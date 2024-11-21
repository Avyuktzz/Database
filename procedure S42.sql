#procedure are something where we can storer the code its like function that means this it helps to reusing the same code again by calling it whenever we want to use it.if we don,t use a proceduer then we have to copy paste the again which will make are code biggggger hence is better y code in procedeure whenever needed call it
#syntax to create procedure
#DELIMITER &&  
#CREATE PROCEDURE procedure_name [[IN | OUT | INOUT] parameter_name datatype [, parameter datatype]) ]    
#BEGIN    
 #   Declaration_section    
  #  Executable_section    
#END &&  
#DELIMITER ; 
#there are four tyoer of procedere 
#1 procidure with no parameter this means no varaible is passed in round bracket
use School;
DELIMITER &&  
CREATE PROCEDURE get_merit_student ()  
BEGIN  
    select * from subject11 where Marks>10;
END &&  
DELIMITER ;

#call procedure
call get_merit_student()

#we can store in between begein && end

#2. procedure with ibn paranmetrerrer
#(in this we can pass varaible inside the rounf rd bracker  )
DELIMITER &&  
CREATE PROCEDURE studen1t (in var int)  #var is the varaible name int is a datatype and in keyword is used in represent input.this varaible has to be used in the query
BEGIN  
    select * from subject11 limit var;
    #limit means is to show how records will be show on table .ex-limit 2 means 2 records will shown on screen 
    #benifit of varaible is when we call the prociduere we can ask the niumberv pass late  on we can vchanfge whenever we ewant ti
END &&  
DELIMITER ;
call studen1t(2);