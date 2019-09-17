clear screen;

drop table Patient2 cascade constraints;

create table Patient2(
	p_id int, 
	p_name varchar2(20), 
	p_phone number(12), 
	gender varchar2(7), 
	age int,
	weight int,
        PRIMARY KEY(p_id)); 

commit;