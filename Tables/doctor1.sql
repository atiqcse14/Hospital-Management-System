
clear screen;

drop table doctor1 cascade constraints;

create table doctor1 (
	D_id int,
	D_name varchar2(30),
	Department varchar2(20),
	D_phone varchar2(12),
        PRIMARY KEY(D_id)); 


commit;

